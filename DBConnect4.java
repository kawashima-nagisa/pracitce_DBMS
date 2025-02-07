/* List9-7 �X�VSQL���𔭍s���ăe�[�u���̃f�[�^���X�V����Java�v���O���� */
import java.sql.*;

public class DBConnect4{
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

          /* 4) UPDATE文の実行 */
          int answer = st.executeUpdate("UPDATE Shohin SET shohin_mei = 'シャツ' WHERE shohin_id = '0001'");
          /*executeUpdate() の戻り値は「影響を受けた（変更された）行数

          executeUpdate() の戻り値まとめ
          SQL の種類	実行結果	戻り値 (executeUpdate() の値)
          DELETE FROM Shohin	Shohin の全行削除	削除された行数
          UPDATE Shohin SET ...	Shohin のデータを更新	更新された行数
          INSERT INTO Shohin VALUES (...)	Shohin にデータを追加	追加された行数

          /* 5) ���ʂ̉�ʕ\�� */
          System.out.print(answer + "行更新しました");

          /* 6) PostgreSQL�Ƃ̐ڑ���ؒf */
          st.close();
          con.close();
     }
}