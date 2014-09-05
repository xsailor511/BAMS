package bams.util;

import java.util.*;
import java.text.SimpleDateFormat;

public class RandomFileName 
{
 public static void main(String[] args)
 {
  Date dt = new Date(System.currentTimeMillis());
  SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
  String   fileName   =   sdf.format(dt);
  System.out.println(fileName);
  
  String test = "tset.jpg";
  int index = test.lastIndexOf(".");
  String suffix = test.substring(index);
  System.out.println(suffix);
 }
}