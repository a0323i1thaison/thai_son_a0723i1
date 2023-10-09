package ss17_IO_BinaryFile_Serialization.MannageProductByFiles.Util;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class ReadingWritingFile {
    // ghi file
    public static void writingToCSV(String filePath, List<String> stringList, boolean append){
        FileWriter fileWriter = null;
        BufferedWriter bufferedWriter =null;
        try {
            fileWriter = new FileWriter(filePath,append);
            bufferedWriter = new BufferedWriter(fileWriter);
            for (String string:stringList) {
                bufferedWriter.write(string);
                bufferedWriter.newLine();
            }
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    // đọc file
    public static List<String> readingCSV(String filePath){
        List<String> stringList = new ArrayList<>();
        // đọc file
        FileReader fileReader = null;
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader(filePath);
            bufferedReader =new BufferedReader(fileReader);
            String line="";
            while ((line=bufferedReader.readLine())!=null){
                stringList.add(line);
            }
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stringList;
    }
}