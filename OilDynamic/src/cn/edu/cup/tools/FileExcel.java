package cn.edu.cup.tools;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class FileExcel {
	private static String ExcelAlgBaseDir = "ExcelFrame";
	private static String ExcelProBaseDir = "ExcelProject";
	private static String ExceluploadTemp = "uploadTemp";

	public String getMsg() {
		return msg;
	}

	public int getSheetNum() {
		return sheetNum;
	}

	public List<SheetContent> getExcelContent() {
		return excleContent;
	}

	String msg = "";
	int sheetNum = 0;
	List<SheetContent> excleContent;

	/*
	 * private void saveInSession(){ ActionContext actionContext =
	 * ActionContext.getContext();
	 * 
	 * Map session = actionContext.getSession();
	 * 
	 * session.put("operatingExcel", excleContent);
	 * 
	 * } private void getInSession(){ ActionContext actionContext =
	 * ActionContext.getContext();
	 * 
	 * Map session = actionContext.getSession();
	 * 
	 * excleContent=(List<SheetContent>)session.get("operatingExcel");
	 * 
	 * }
	 */
	public static void main(String args[]) {
		FileExcel a=new FileExcel();
		a.test();
	}

	public int getProID() {
		return proID;
	}

	public SheetContent getSheetByID(int id) {
		return excleContent.get(id);
	}

	int proID;
	int algID;
	String InOrOut;

	public String getInOrOut() {
		return InOrOut;
	}

	String fileName;

	public String getFileName() {
		return fileName;
	}
	public String getFileNameUrl() {
		return ExceluploadTemp+"/"+ this.fileName;
	}
	public int readExcel(int proID, int algid, String InOrOut, String fileName)
			throws IOException {
		this.proID = proID;
		this.algID = algid;
		this.fileName = fileName;
		this.InOrOut = InOrOut;
		InputStream inputStream;
		try {
			String path = Tools.getWebRoot() + fileName;
			inputStream = new FileInputStream(new File(path));
			// System.out.println(123);
			Workbook wb = null;
			// 解析xls格式
			if (fileName.endsWith("xls")) {

				// System.out.println("read excel"+fileName);
				wb = new HSSFWorkbook(inputStream);

				// 解析xlsx格式
			} else if (fileName.endsWith("xlsx")) {
				wb = new XSSFWorkbook(inputStream);// 解析xlsx格式
			}
			sheetNum = wb.getNumberOfSheets();
			excleContent = new ArrayList<SheetContent>();
			for (int i = 0; i < sheetNum; i++) {
				Sheet sheet = wb.getSheetAt(i);// 第i个工作表
				SheetContent temp = new SheetContent(sheet, i);
				excleContent.add(temp);
				// System.out.println(sheet.getSheetName());

			}
			msg = "excle解析成功";
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			msg = "Excel文件未找到";
			return -1;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg = "Excel文件格式不正确";
			// inputStream.close();
			return -1;
		}
		inputStream.close();
		return 1;
	}

	public int getAlgID() {
		return algID;
	}

	Cell cell1_1;

	public int insertCell(Row row1, int j, Object value) {
	
		cell1_1 = row1.createCell(j);
		if(Tools.getType(value)==3){
			cell1_1.setCellType(Cell.CELL_TYPE_STRING);
			cell1_1.setCellValue((String)value);
		}if(Tools.getType(value)==1){
			cell1_1.setCellType(Cell.CELL_TYPE_NUMERIC);
			cell1_1.setCellValue(Double.valueOf((Integer)value));
			//cell1_1.setCellValue(value);
		}if(Tools.getType(value)==2){
			cell1_1.setCellType(Cell.CELL_TYPE_NUMERIC);
			cell1_1.setCellValue(Double.valueOf((Double)value));
			//cell1_1.setCellValue(value);
		}if(Tools.getType(value)==-1){
			cell1_1.setCellType(Cell.CELL_TYPE_BLANK);
			//cell1_1.setCellValue(null);
		}
		
		
		return 1;
	}

	HSSFRow row;

	public int insertRow(HSSFSheet sheet, int i, Object[] values) {
		row = sheet.createRow(i);
		for (int j = 0; j < values.length; j++) {
			Object temp=(Object)values[j];
  			insertCell(row, j, temp);
		}

		return 1;
	}
	public void test(){
		
		  
		        HSSFWorkbook wb = new HSSFWorkbook();  
		        HSSFSheet sheet = wb.createSheet("tst");  
		        HSSFRow row = sheet.createRow((int) 0);  
		        
		       
		        
		        
		        HSSFCellStyle style = wb.createCellStyle();  
		        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);  		       
		  
		            row = sheet.createRow(1);  
		            row.createCell(0).setCellValue(0);  
		            row.createCell(1).setCellValue(1);  
		            row.createCell(2).setCellValue(2);  
		            
		            sheet=wb.createSheet("节点");		
					
					HSSFRow row1 = sheet.createRow(0);
					insertCell(row1,  0, "序号");
					insertCell(row1,  1, "节点名称");
					insertCell(row1, 2, "节点类型");
					insertCell(row1, 3, "经度");
					insertCell(row1,  4, "纬度");
					insertCell(row1,  5, "相对坐标X");
					insertCell(row1, 6, "相对坐标Y");
					insertCell(row1,  7, "大地坐标X");
					insertCell(row1,  8, "大地坐标Y");	      
		            
		            
		        	System.out.println("save " + this.fileName);
		        	OutputStream ouputStream;
		    		try {
		    			ouputStream = new FileOutputStream("D:\\software\\tomcat7\\webapps\\OilDynamic\\uploadTemp\\test.xls");
		    			 wb.write(ouputStream);  
		    		        ouputStream.flush();  
		    		        ouputStream.close();   
		    		} catch (Exception e) {
		    			// TODO Auto-generated catch block
		    			e.printStackTrace();
		    		}
		    	
		    		
		    
		
	}
 	public String createExcel(){
		this.fileName=Tools.getUUID()+".xls";
		File file=new File(Tools.getWebRoot()+File.separator+ExceluploadTemp+File.separator + this.fileName);
		try {
			if(file.createNewFile()){
				return this.fileName;
			}else{
				return null;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}
		return null;
	}
	public FileExcel(){
		// 生成Workbook
		// Workbook wb = new SXSSFWorkbook(1000);
		this.fileName=Tools.getUUID()+".xls";
		 wb = new HSSFWorkbook();  
	}
	HSSFWorkbook wb ;
	public int saveExcel() {// 保存到文件
		
		  

		OutputStream ouputStream = null;

		try {
			/*out = new FileOutputStream(Tools.getWebRoot() + this.fileName);
			System.out.println("save " + this.fileName);
			wb.write(out);*/
			String FilePath=Tools.getWebRoot()+ExceluploadTemp+File.separator + this.fileName;
			//FilePath="D:\\software\\tomcat7\\webapps\\OilDynamic\\test.xls";
			ouputStream = new FileOutputStream(FilePath);
			 wb.write(ouputStream);  
		        ouputStream.flush();  
		        ouputStream.close(); 
		} catch (Exception e) {
			
			// System.out.println(e.toString());
			return -1;
		} finally {
			try {
				ouputStream.flush();
				ouputStream.close();
				
			} catch (Exception e) {
				// System.out.println(e.toString());
				return -1;
			}
		}

		return 1;
	}

	public String writeExcel(String fileName) {

		return "Success";

	}

	public void addNode(List l) {
		HSSFSheet sheet=wb.createSheet("节点");		
		
		HSSFRow row1 = sheet.createRow(0);
		insertCell(row1,  0, "序号");
		insertCell(row1,  1, "节点名称");
		insertCell(row1, 2, "节点类型");
		insertCell(row1, 3, "经度");
		insertCell(row1,  4, "纬度");
		insertCell(row1,  5, "相对坐标X");
		insertCell(row1, 6, "相对坐标Y");
		insertCell(row1,  7, "大地坐标X");
		insertCell(row1,  8, "大地坐标Y");		
		
		
		for (int k = 0; k < l.size(); k++) {
			insertRow(sheet, k+1,  (Object[])l.get(k));
		}
		
	}

	public void addEdge(List l) {
		HSSFSheet sheet=wb.createSheet("连接");		
		
		HSSFRow row1 = sheet.createRow(0);
		insertCell(row1, 0, "序号");
		insertCell(row1,  1, "连接名称");
		insertCell(row1,  2, "起点节点序号");
		insertCell(row1,  3, "终点节点序号");
			
		
		
		for (int k = 0; k < l.size(); k++) {
			insertRow(sheet, k+1,  (Object[])l.get(k));
		}
		
	}

	public void addNodeProper(List l) {
		HSSFSheet sheet=wb.createSheet("节点属性");		
		
		HSSFRow row1 = sheet.createRow(0);
		insertCell(row1, 0, "节点类型");
		insertCell(row1,  1, "节点名称");
		insertCell(row1,  2, "属性名称");
		insertCell(row1,  3, "属性名称");
		insertCell(row1,  4, "属性值");	
		
		
		for (int k = 0; k < l.size(); k++) {
			insertRow(sheet, k+1,  (Object[])l.get(k));
		}
		
	}

	// 读取表头

	
}
