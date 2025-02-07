/* List9-7 �X�VSQL���𔭍s���ăe�[�u���̃f�[�^���X�V����Java�v���O���� */
import java.sql.*;

public class DBConnect3{
     public static void main(String[] args) throws Exception {

          /* 1) PostgreSQL�ւ̐ڑ���� */
          Connection con; 
          Statement st;

          String url = "jdbc:postgresql://localhost:5432/shop";
          String user = "kawashimanagisa";
          String password = "test"; 
          

          /* 2) JDBC�h���C�o�̒�` */
          Class.forName("org.postgresql.Driver");

          /* 3) PostgreSQL�ւ̐ڑ� */
          con = DriverManager.getConnection(url, user, password);
          st = con.createStatement();

          /* 4) DELETE���̎��s */
          int delcnt = st.executeUpdate("DELETE FROM Shohin");
          /*executeUpdate() の戻り値は「影響を受けた（変更された）行数

          /* 5) ���ʂ̉�ʕ\�� */
          System.out.print(delcnt + "行削除しました");

          /* 6) PostgreSQL�Ƃ̐ڑ���ؒf */
          st.close();
          con.close();
     }
}