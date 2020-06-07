
package com.tech.blog.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class helper 
{
    public static boolean deleteFile(String Path)
    {
        boolean f=false;
        try
        {
            File file=new File(Path);
            f=file.delete();
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
    public static boolean saveFile(InputStream io,String Path)
    {
        boolean f=false;
        try
        {
            byte b[] =new byte[io.available()];
            io.read(b);
            FileOutputStream fos=new FileOutputStream(Path);
            fos.write(b);
            fos.flush();
            fos.close();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
}
