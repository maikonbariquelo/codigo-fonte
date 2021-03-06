/***********************************************************************************
* VESTIS PCPC - SISTEMA PARA INDUSTRIAS DE CONFECÇÕES.                             * 
*                                                                                  * 
* Este arquivo é parte do codigo-fonte do sistema VESTIS PCP, é um software livre; *
* você pode redistribuí-lo e/ou modificá-lo dentro dos termos da GNU LGPL versão 3 *
* como publicada pela Fundação do Software Livre (FSF).                            *
*                                                                                  *
* Este programa é distribuído na esperança que possa ser útil, mas SEM NENHUMA     *
* GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer MERCADO ou          *
* APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral GNU/LGPL em português      *
* para maiores detalhes.                                                           *
*                                                                                  *
* Você deve ter recebido uma cópia da GNU LGPL versão 3, sob o título              *
* "LICENCA.txt", junto com esse programa.                                          *
* Se não, acesse <http://www.gnu.org/licenses/>                                    *
* ou escreva para a Fundação do Software Livre (FSF) Inc.,                         *
* 51 Franklin St, Fifth Floor, Boston, MA 02111-1301, USA.                         *
*                                                                                  *
*                                                                                  *
* Autor: Adriano Zanini -  zanini@r7.com                                           *
*                                                                                  *
********************************************************************************** */


/***********************************************************************************
**  SISTEMA...............: VESTIS PCP                                            **
**  DESCRIÇÃO.............: SISTEMA ERP PARA INDUSTRIAS DE CONFECÇÕES             **
**  LINGUAGEM.............: DELPHI XE5                                            ** 
**  BANCO DE DADOS........: SQL SERVER 2012                                       ** 
**                                                                                **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  ANALISTA/PROGRAMADOR..: ADRIANO ZANINI                                        **
**  AUTORIA...............: ADRIANO ZANINI                                        **
**  E-MAIL................: zanini@r7.com                                         **
**  ANO...................: 2010 - 2014                                           **
**                                                                                **
** -----------------------------------------------------------------------------  **
**                                                                                **
**  OBSERVAÇÃO............: CÓDIGO-FONTE LIVRE. E NÃO PODE SER COMERCIALIZADO.    **
**                          QUALQUER PESSOA FISICA OU JURIDICA (EMPRESA) PODE     **
**                          COPIAR E UTILIZAR SEM FINS COMERCIAIS.                **
**                                                                                **
***********************************************************************************/


/******************************************************************
** Instruções:                                                   **
**                                                               **
** Aqui está direcionado para criar a seguinte pasta:            **
** C:\Vestis\DB                                                  **
**                                                               **
** (altere para a pasta de sua preferencia)                      **
**                                                               **
*******************************************************************/


USE [master]
GO
/****** Object:  Database [VESTIS]    Script Date: 15/03/2014 11:50:35 ******/
CREATE DATABASE [VESTIS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VESTIS', FILENAME = N'C:\Vestis\DB\VESTIS.mdf' , SIZE = 128704KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VESTIS_log', FILENAME = N'C:\Vestis\DB\VESTIS.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VESTIS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VESTIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VESTIS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VESTIS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VESTIS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VESTIS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VESTIS] SET ARITHABORT OFF 
GO
ALTER DATABASE [VESTIS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VESTIS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [VESTIS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VESTIS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VESTIS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VESTIS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VESTIS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VESTIS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VESTIS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VESTIS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VESTIS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VESTIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VESTIS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VESTIS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VESTIS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VESTIS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VESTIS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VESTIS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VESTIS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VESTIS] SET  MULTI_USER 
GO
ALTER DATABASE [VESTIS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VESTIS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VESTIS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VESTIS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [VESTIS]
GO
/****** Object:  UserDefinedDataType [dbo].[BOOLEAN]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[BOOLEAN] FROM [varchar](10) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[CLASSIFICACAO]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[CLASSIFICACAO] FROM [varchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[CUSTO]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[CUSTO] FROM [numeric](15, 4) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[FHORAS]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[FHORAS] FROM [float] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[FQUANTIDADE]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[FQUANTIDADE] FROM [numeric](15, 4) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[HORAS]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[HORAS] FROM [time](7) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[ICODIGO]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[ICODIGO] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[IMAGEM]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[IMAGEM] FROM [image] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[IQUANTIDADE]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[IQUANTIDADE] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[PERCENTUAL]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[PERCENTUAL] FROM [numeric](15, 4) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[SCODIGO]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[SCODIGO] FROM [varchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[SDATE]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[SDATE] FROM [datetime] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[SEXO]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[SEXO] FROM [varchar](1) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[SNOME]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[SNOME] FROM [varchar](200) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[TEXTO]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[TEXTO] FROM [varchar](5000) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[UF_ESTADO]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[UF_ESTADO] FROM [varchar](2) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[VALOR]    Script Date: 15/03/2014 11:50:35 ******/
CREATE TYPE [dbo].[VALOR] FROM [numeric](15, 4) NULL
GO
/****** Object:  StoredProcedure [dbo].[SPATUALIZA_COMPRA_GRADE]    Script Date: 15/03/2014 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPATUALIZA_COMPRA_GRADE] (
    @NEMPRESA integer,
    @NCOMPRA integer,
    @ACAO varchar(20))
as
begin

  -- **************************************************************
  -- ***   COMPRAS -  ATUALIZAR VIA GRADE (ENTRADA)          ******
  -- **************************************************************
  if (( @ACAO='ENTRADA') or (@ACAO='E') )  
  begin
     UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE + coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM COMPRAS_ITENS_GRADES
                                                                       WHERE
                                                                          COMPRAS_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                       AND
                                                                          COMPRAS_ITENS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
                                                                       AND
                                                                          COMPRAS_ITENS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                       AND
                                                                          COMPRAS_ITENS_GRADES.CODIGO=@NCOMPRA   
                                                                       
                                                                       GROUP BY REFERENCIA, COR, TAMANHO),0)
     
     WHERE
        CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
     AND
        CAD_PRODUTOS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
     AND
        CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;


     
     UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO + coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM COMPRAS_ITENS_GRADES
                                                                       WHERE
                                                                          COMPRAS_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                       AND
                                                                          COMPRAS_ITENS_GRADES.CODIGO=@NCOMPRA   
                                                                      ),0)
     
     WHERE
        CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA
     
     

  end -- if (@ACAO='ENTRADA') 



  -- **************************************************************
  -- ***   COMPRAS -  ATUALIZAR VIA GRADE (SAIDA)            ******
  -- **************************************************************
  if (( @ACAO='SAIDA') or (@ACAO='S') ) 
  begin
     UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE - coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM COMPRAS_ITENS_GRADES
                                                                       WHERE
                                                                          COMPRAS_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                       AND
                                                                          COMPRAS_ITENS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
                                                                       AND
                                                                          COMPRAS_ITENS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                       AND
                                                                          COMPRAS_ITENS_GRADES.CODIGO=@NCOMPRA   
                                                                       
                                                                       GROUP BY REFERENCIA, COR, TAMANHO),0)
     WHERE
        CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
     AND
        CAD_PRODUTOS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
     AND
        CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;



     UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO - coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM COMPRAS_ITENS_GRADES
                                                                       WHERE
                                                                          COMPRAS_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                       AND
                                                                          COMPRAS_ITENS_GRADES.CODIGO=@NCOMPRA   
                                                                      ),0)
     
     WHERE
        CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA


  end -- if (@ACAO='SAIDA') 

  
   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS SET 
      ESTOQUESALDO=COALESCE( (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE   CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA AND COR_ID>0 AND TAMANHO_ID>0 ),0)
   WHERE
      CAD_PRODUTOS.EMPRESA=CAD_PRODUTOS.EMPRESA
   AND
      CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA

     
     
  UPDATE CAD_PRODUTOS set ESTOQUESALDO=0
  WHERE
     (ESTOQUESALDO is null) OR (ESTOQUESALDO < 1);     

end


GO
/****** Object:  StoredProcedure [dbo].[SPATUALIZA_COMPRA_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPATUALIZA_COMPRA_PRODUTOS] (
    @NCOMPRA integer,
    @ACAO varchar(20),
    @SPRODUTO varchar(30),
    @NQUANTIDADE numeric(15,4),
    @NNVALOR numeric(15,4) output)
as
begin

  /* ********     ENTRADA  ********** */

  if (( @ACAO='ENTRADA') or (@ACAO='E') )  
  begin
     /* ATUALIZA ITEM DO CAD_PRODUTOS COM BASE NOS ITENS DA COMPRA */
     /* -------------------------------------------------------------*/

     UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=coalesce(CAD_PRODUTOS.ESTOQUESALDO,0) + @NQUANTIDADE
     WHERE
        CAD_PRODUTOS.REFERENCIA=@SPRODUTO



     /* ICMS */

     update CAD_PRODUTOS set ICMS=(
                           select ICMS from COMPRAS_ITENS
                           where
                              CODIGO=@NCOMPRA
                           and
                              PRODUTO=@SPRODUTO
                           )
     where
         CAD_PRODUTOS.REFERENCIA=@SPRODUTO;


     /* ------------------------------------------------------------- */

     /* IPI */


     update CAD_PRODUTOS set IPI=(
                           select  IPI from COMPRAS_ITENS
                           where
                              CODIGO=@NCOMPRA
                           and
                              PRODUTO=@SPRODUTO
                           )
     where
         CAD_PRODUTOS.REFERENCIA=@SPRODUTO;

     /* ------------------------------------------------------------- */

     /* PREÇO DE CUSTO */


     update CAD_PRODUTOS set PRC_CUSTO=(
                           select VL_UNITARIO from COMPRAS_ITENS
                           where
                              CODIGO=@NCOMPRA
                           and
                              PRODUTO=@SPRODUTO
                           )
     where
         CAD_PRODUTOS.REFERENCIA=@SPRODUTO;

     /* ------------------------------------------------------------- */

     /* TABELA CAD_PRODUTOS BUSCANDO DOS DADOS DA NOTA (MESTRE-COMPRAS) */

     /* DATA DA ULTIMA COMPRA */


     update CAD_PRODUTOS set DT_ULTIMA_COMPRA  =(
                           select DATAENTRADA from COMPRAS_ITENS
                           where
                              CODIGO=@NCOMPRA
                           and
                              PRODUTO=@SPRODUTO
                           )
     where
         CAD_PRODUTOS.REFERENCIA=@SPRODUTO;




     /* ------------------------------------------------------------- */
     /* LOTE DO PRODUTO */


     update CAD_PRODUTOS set LOTE  =(
                           select LOTE from COMPRAS_ITENS
                           where
                              CODIGO=@NCOMPRA
                           and
                              PRODUTO=@SPRODUTO
                           )
     where
         CAD_PRODUTOS.REFERENCIA=@SPRODUTO;




     /* ------------------------------------------------------------- */
     /* DATA DA VALIDADE DO PRODUTO */


     update CAD_PRODUTOS set DT_VALIDADE  =(
                           select VALIDADE from COMPRAS_ITENS
                           where
                              CODIGO=@NCOMPRA
                           and
                              PRODUTO=@SPRODUTO
                           )
     where
         CAD_PRODUTOS.REFERENCIA=@SPRODUTO;




     /* ------------------------------------------------------------- */
     /* PREÇO DE VENDA DO PRODUTO */

     update CAD_PRODUTOS  set
        CAD_PRODUTOS.prc_venda=CAD_PRODUTOS.PRC_CUSTO +
        ( (CAD_PRODUTOS.PRC_CUSTO * (CAD_PRODUTOS.icms  / 100))  ) + /* icms   % */
        ( (CAD_PRODUTOS.PRC_CUSTO * (CAD_PRODUTOS.ipi   / 100))  ) + /* ipi    % */
        ( (CAD_PRODUTOS.PRC_CUSTO * (CAD_PRODUTOS.perc_frete / 100))  ) + /* frete  % */
        ( (CAD_PRODUTOS.PRC_CUSTO * (CAD_PRODUTOS.markup     / 100))  ) + /* markup % */
        ( (CAD_PRODUTOS.PRC_CUSTO * (CAD_PRODUTOS.mg_lucro   / 100))  )   /* lucro  % */
     where
     CAD_PRODUTOS.REFERENCIA =(
        select COMPRAS_ITENS.PRODUTO from COMPRAS_ITENS
        where
        CODIGO=@NCOMPRA
        and
        PRODUTO=@SPRODUTO
        )
     and
        CAD_PRODUTOS.REFERENCIA=@SPRODUTO;

     /* ------------------------------------------------------------- */

     update CAD_PRODUTOS set CAD_PRODUTOS.lucro_liquido=(CAD_PRODUTOS.PRC_CUSTO * (CAD_PRODUTOS.mg_lucro   / 100)
                           )
     where
        CAD_PRODUTOS.REFERENCIA=@SPRODUTO;


     /* FECHAR COMPRA */
     update COMPRAS set ATUALIZADO='S'
     where
        CODIGO=@NCOMPRA;


     /* FECHAR PEDIDO DE COMPRA */
     update COMPRA_PEDIDOS set EFETIVADO='S'
     where
        CODIGO=(SELECT COMPRAS.PEDIDOINTERNO  FROM COMPRAS WHERE COMPRAS.CODIGO=@NCOMPRA);



  end -- if (@ACAO='ENTRADA') 


  /* ********     SAIDA  ********** */

  if (( @ACAO='SAIDA') or (@ACAO='S') ) 
  begin

     UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=coalesce(CAD_PRODUTOS.ESTOQUESALDO,0) - @NQUANTIDADE
     
     WHERE
        CAD_PRODUTOS.REFERENCIA=@SPRODUTO

     /* REABRIR COMPRA */
     update COMPRAS set ATUALIZADO='N'
     where
        CODIGO=@NCOMPRA;


     /* REABRIR PEDIDO DE COMPRA */
     update COMPRA_PEDIDOS set EFETIVADO='N'
     where
        CODIGO=(SELECT COMPRAS.PEDIDOINTERNO  FROM COMPRAS WHERE COMPRAS.CODIGO=@NCOMPRA);



  end -- if (@ACAO='SAIDA') 


end


GO
/****** Object:  StoredProcedure [dbo].[SPATUALIZA_VENDA_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPATUALIZA_VENDA_GRADE] (
    @NEMPRESA integer,
    @NVENDA integer,
    @ACAO varchar(20))
as
begin

  -- **************************************************************
  -- ***   VENDAS  -  ATUALIZAR VIA GRADE (SAIDA)            ******
  -- **************************************************************
  --if (( @ACAO='SAIDA') or (@ACAO='S') )  
  if ( @ACAO IN ('S','SAIDA') )
  begin
     UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE - coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM VENDAS_ITENS_GRADES
                                                                       WHERE
                                                                          VENDAS_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                       AND
                                                                          VENDAS_ITENS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
                                                                       AND
                                                                          VENDAS_ITENS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                       AND
                                                                          VENDAS_ITENS_GRADES.CODIGO=@NVENDA   
                                                                       
                                                                       GROUP BY REFERENCIA, COR, TAMANHO),0)
     
     WHERE
        CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
     AND
        CAD_PRODUTOS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
     AND
        CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;


     
     UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO + coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM VENDAS_ITENS_GRADES
                                                                       WHERE
                                                                          VENDAS_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                       AND
                                                                          VENDAS_ITENS_GRADES.CODIGO=@NVENDA   
                                                                      ),0)
     
     WHERE
        CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA
     
     

  end -- if (@ACAO='SAIDA') 



  -- **************************************************************
  -- ***   VENDAS  -  ATUALIZAR VIA GRADE (ENTRADA)          ******
  -- **************************************************************
  if ( @ACAO IN ('E','ENTRADA') )
  begin
     UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE + coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM VENDAS_ITENS_GRADES
                                                                       WHERE
                                                                          VENDAS_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                       AND
                                                                          VENDAS_ITENS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
                                                                       AND
                                                                          VENDAS_ITENS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                       AND
                                                                          VENDAS_ITENS_GRADES.CODIGO=@NVENDA   
                                                                       
                                                                       GROUP BY REFERENCIA, COR, TAMANHO),0)
     WHERE
        CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
     AND
        CAD_PRODUTOS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
     AND
        CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;



     UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO - coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM VENDAS_ITENS_GRADES
                                                                       WHERE
                                                                          VENDAS_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                       AND
                                                                          VENDAS_ITENS_GRADES.CODIGO=@NVENDA   
                                                                      ),0)
     
     WHERE
        CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA



  end -- if (@ACAO='ENTRADA') 



  -- **************************************************************
  -- ***   VENDAS  -  ATUALIZAR VIA GRADE (ENTRADA)          ******
  -- **************************************************************
  if ( @ACAO IN ('D','DEVOLVER') )
  begin
     UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE + coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM VENDAS_DEVOLUCAO_ITENS_GRADES
                                                                       WHERE
                                                                          VENDAS_DEVOLUCAO_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                       AND
                                                                          VENDAS_DEVOLUCAO_ITENS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
                                                                       AND
                                                                          VENDAS_DEVOLUCAO_ITENS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                       AND
                                                                          VENDAS_DEVOLUCAO_ITENS_GRADES.CODIGO=@NVENDA

                                                                       GROUP BY REFERENCIA, COR, TAMANHO),0)
     WHERE
        CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
     AND
        CAD_PRODUTOS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
     AND
        CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;



     UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO - coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM VENDAS_DEVOLUCAO_ITENS_GRADES
                                                                       WHERE
                                                                          VENDAS_DEVOLUCAO_ITENS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                       AND
                                                                          VENDAS_DEVOLUCAO_ITENS_GRADES.CODIGO=@NVENDA
                                                                      ),0)

     WHERE
        CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA



  end -- if (@ACAO='DEVOLVER')



   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS SET 
      ESTOQUESALDO=COALESCE( (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE   CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA AND COR_ID>0 AND TAMANHO_ID>0 ),0)
   WHERE
      CAD_PRODUTOS.EMPRESA=CAD_PRODUTOS.EMPRESA
   AND
      CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA
     
     
  UPDATE CAD_PRODUTOS set ESTOQUESALDO=0
  WHERE
     (ESTOQUESALDO is null) OR (ESTOQUESALDO < 1);     



end


GO
/****** Object:  StoredProcedure [dbo].[SPCALCULA_ITEM_COMPRA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPCALCULA_ITEM_COMPRA]
	@CODIGO [int]
--WITH EXECUTE AS CALLER
AS
begin

  /* multiplica quantidade x valor unitário */
  update COMPRAS_ITENS  set
     VL_TOTAL=(COALESCE(QUANTIDADE,0) * COALESCE(VL_UNITARIO,0))
  where
     codigo =@CODIGO;

  /* efetua desconto informado pelo usuário */
  update COMPRAS_ITENS  set
     VL_TOTAL=VL_TOTAL- COALESCE((COALESCE(VL_TOTAL,0) * (COALESCE(DESCONTO,0) / 100)),0)
  where
     codigo =@CODIGO;

  /* salva desconto no campo apropriado */
  update COMPRAS_ITENS  set
     DESCONTO_VLR= COALESCE((COALESCE(VL_TOTAL,0) * (COALESCE(DESCONTO,0) / 100)),0)
  where
     codigo =@CODIGO;

  /* calcula ICMS */
  update COMPRAS_ITENS  set
        ICMS_VALOR=
        CASE 
           WHEN COALESCE(ICMS,0) > 0 THEN COALESCE( (COALESCE(VL_UNITARIO,0) * (COALESCE(ICMS,0) / 100)),0  )
        ELSE
           ICMS_VALOR  
        END   
   where
        codigo =@CODIGO;

  /* calcula IPI */
  update COMPRAS_ITENS  set
        IPI_VALOR=
        CASE 
           WHEN COALESCE(IPI,0) > 0 THEN COALESCE( (COALESCE(VL_UNITARIO,0) * (COALESCE(IPI,0) / 100)),0  )
        ELSE
           IPI_VALOR  
        END   
   where
        codigo =@CODIGO;

  /* calulca preço de venda */
  update COMPRAS_ITENS  set
     PRC_VENDA=VL_UNITARIO +
        ( /* mackup */ (COALESCE(VL_UNITARIO,0) * (COALESCE(MARKUP,0)    / 100))  )+
        ( /* frete */ (COALESCE(VL_UNITARIO,0) * (COALESCE(PFRETE,0) / 100))  ) +
        ( /* lucro */ (COALESCE(VL_UNITARIO,0) * (COALESCE(MG_LUCRO,0)   / 100))  )
  where
     codigo =@CODIGO;


  /* salvar na tabela mestre os dados dos itens da nota fiscal */

  /* Calcular valor total */
  update COMPRAS  set
     TOTAL_NF=(
     select sum(COALESCE(VL_TOTAL,0)) from COMPRAS_ITENS where CODIGO=@CODIGO
     )
  where
     codigo =@CODIGO;


  update COMPRAS  set
     TOTAL_NF=TOTAL_NF+COALESCE(FRETE_VALOR,0)
  where
     codigo =@CODIGO;



  /* Calcular Descontos */
  update COMPRAS  set
     VLR_DESCONTO=(
     select sum(COALESCE(DESCONTO_VLR,0)) from COMPRAS_ITENS where CODIGO=@CODIGO
     )
  where
     codigo =@CODIGO;


  /* Calcular quantidades */
  update COMPRAS  set
     QTDE_PRODUTOS=(
     select sum(COALESCE(QUANTIDADE,0)) from COMPRAS_ITENS where CODIGO=@CODIGO
     )
  where
     codigo =@CODIGO;

  /* Calcular ICMS */
  update COMPRAS  set
     ICMS_VALOR=(
     select sum(COALESCE(ICMS_VALOR,0)) from COMPRAS_ITENS where CODIGO=@CODIGO
     )
  where
     codigo =@CODIGO;

  /* Calcular IPI */
  update COMPRAS  set
     IPI_VALOR=(
     select sum(COALESCE(IPI_VALOR,0)) from COMPRAS_ITENS where CODIGO=@CODIGO
     )
  where
     codigo =@CODIGO;

  update COMPRAS  set
     TOTAL_NF=TOTAL_NF+COALESCE(IPI_VALOR,0)
  where
     codigo =@CODIGO;


end


GO
/****** Object:  StoredProcedure [dbo].[SPCLIENTE_ATUALIZACREDITO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPCLIENTE_ATUALIZACREDITO] (
    @NCODIGO integer
    )
as
begin

   ------------------------------------------------------------------------
   -- "SAIDA"
   ------------------------------------------------------------------------

   UPDATE CAD_CLIENTES SET CREDITO_DISPONIVEL=coalesce( (SELECT SUM(VALOR) FROM CAD_CLIENTES_CREDITOS WHERE CAD_CLIENTES_CREDITOS.CLIENTE=CAD_CLIENTES.CODIGO ),0)
   WHERE
   CAD_CLIENTES.CODIGO=@NCODIGO


   UPDATE CAD_CLIENTES SET CREDITO_UTILIZADO=coalesce( (select  SUM(VENDAS.CREDITOABATIMENTO) FROM VENDAS  WHERE VENDAS.CLIENTE=CAD_CLIENTES.CODIGO ) ,0)
   WHERE
   CAD_CLIENTES.CODIGO=@NCODIGO


   UPDATE CAD_CLIENTES SET CREDITO_DISPONIVEL=CREDITO_DISPONIVEL-CREDITO_UTILIZADO

   UPDATE CAD_CLIENTES SET CREDITO_DISPONIVEL=0
   WHERE
   CREDITO_DISPONIVEL<0 OR CREDITO_DISPONIVEL IS NULL
 

end


GO
/****** Object:  StoredProcedure [dbo].[SPCONFERENCIA_CALCULA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPCONFERENCIA_CALCULA] (
    @CODIGO integer)
as
begin

DECLARE @NDESCONTO FLOAT

SET @NDESCONTO=Coalesce( (select Coalesce(PEDIDOS.DESCONTO,0)    from  PEDIDOS where  PEDIDOS.CODIGO=( SELECT PEDIDO FROM PEDIDOCONFERENCIA WHERE CODIGO=@CODIGO ) ),0);

  /*
  update PEDIDOCONFERENCIA set  
     VLR_DESCONTOPEDIDO         = (VLR_TOTAL * ( @NDESCONTO / 100))
  where
     CODIGO=@CODIGO;
     */


  update PEDIDOCONFERENCIA set VLR_DESCONTOPEDIDO=0
  where
     VLR_DESCONTOPEDIDO is null;

  update PEDIDOCONFERENCIA set VLR_TOTAL=0
  where
     VLR_TOTAL is null;

  update PEDIDOCONFERENCIA set QTDE_TOTAL=0
  where
     QTDE_TOTAL is null;

  update PEDIDOCONFERENCIA  set
     PEDIDOCONFERENCIA.QTDE_TOTAL      = (select sum(PEDIDOCONFERENCIA_ITENS.QUANTIDADE)         from  PEDIDOCONFERENCIA_ITENS where  PEDIDOCONFERENCIA_ITENS.CODIGO=@CODIGO ),
     PEDIDOCONFERENCIA.VLR_TOTAL       = (select sum(PEDIDOCONFERENCIA_ITENS.VALOR_UNIT*PEDIDOCONFERENCIA_ITENS.QUANTIDADE)    from  PEDIDOCONFERENCIA_ITENS where  PEDIDOCONFERENCIA_ITENS.CODIGO=@CODIGO ) 
  where
    CODIGO=@CODIGO;

  -- aplicar descontos
  /* calcular itens do pedido -- */
  update PEDIDOCONFERENCIA set
     PEDIDOCONFERENCIA.VLR_TOTAL = PEDIDOCONFERENCIA.VLR_TOTAL  - VLR_DESCONTOPEDIDO
  where
     CODIGO=@CODIGO;

end


GO
/****** Object:  StoredProcedure [dbo].[SPCONFERENCIA_IMPORTAR_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[SPCONFERENCIA_IMPORTAR_ITENS] (
    @NCONFERENCIA INTEGER,
    @NPEDIDO INTEGER,
    @ACAO VARCHAR(30)
    )
AS
BEGIN


DECLARE @NDESCONTO FLOAT

SET @NDESCONTO= (select Coalesce(PEDIDOS.DESCONTO,0)    from  PEDIDOS where CODIGO=@NPEDIDO );


delete from PEDIDOCONFERENCIA_ITENS
WHERE 
PEDIDOCONFERENCIA_ITENS.PEDIDO=@NPEDIDO
AND
PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA;

INSERT INTO PEDIDOCONFERENCIA_ITENS(
           CODIGO
           ,PEDIDO
           ,REFERENCIA
           ,IDENTIFICADOR
           ,DESCRICAO
           ,GRADE_ID
           ,CELULA
           ,COR_ID
           ,COR
           ,TAMANHO_ID
           ,TAMANHO
           ,ORDEM_GRADE
           ,CELULA_COL
           ,COLUNA_ROW
           ,QUANTIDADE
           ,VALOR_UNIT)  
          
          
( SELECT 
       @NCONFERENCIA
      ,@NPEDIDO
      ,REFERENCIA
      ,IDENTIFICADOR
      ,(SELECT CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA )
      ,(SELECT GRADE_ID FROM PEDIDOS_ITENS_GRADE WHERE  CODIGO=@NPEDIDO  AND REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA and TAMANHO<>'' AND QUANTIDADE>0 and COR=VIEW_PEDIDO_QTDERESTANTE.COR and TAMANHO=VIEW_PEDIDO_QTDERESTANTE.TAMANHO )   --GRADE_ID
      ,(SELECT CELULA FROM PEDIDOS_ITENS_GRADE WHERE  CODIGO=@NPEDIDO  AND REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA and TAMANHO<>'' AND QUANTIDADE>0 and COR=VIEW_PEDIDO_QTDERESTANTE.COR and TAMANHO=VIEW_PEDIDO_QTDERESTANTE.TAMANHO )   --CELULA
      ,(SELECT COR_ID FROM PEDIDOS_ITENS_GRADE WHERE  CODIGO=@NPEDIDO  AND REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA and TAMANHO<>'' AND QUANTIDADE>0 and COR=VIEW_PEDIDO_QTDERESTANTE.COR and TAMANHO=VIEW_PEDIDO_QTDERESTANTE.TAMANHO )   --COR_ID
      ,COR
      ,(SELECT TAMANHO_ID FROM PEDIDOS_ITENS_GRADE WHERE  CODIGO=@NPEDIDO  AND REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA and TAMANHO<>'' AND QUANTIDADE>0 and COR=VIEW_PEDIDO_QTDERESTANTE.COR and TAMANHO=VIEW_PEDIDO_QTDERESTANTE.TAMANHO )   --TAMANHO_ID
      ,TAMANHO
      ,ORDEM_GRADE
      ,(SELECT CELULA_COL FROM PEDIDOS_ITENS_GRADE WHERE  CODIGO=@NPEDIDO  AND REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA and TAMANHO<>'' AND QUANTIDADE>0 and COR=VIEW_PEDIDO_QTDERESTANTE.COR and TAMANHO=VIEW_PEDIDO_QTDERESTANTE.TAMANHO )   --CELULA_COL
      ,(SELECT COLUNA_ROW FROM PEDIDOS_ITENS_GRADE WHERE  CODIGO=@NPEDIDO  AND REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA and TAMANHO<>'' AND QUANTIDADE>0 and COR=VIEW_PEDIDO_QTDERESTANTE.COR and TAMANHO=VIEW_PEDIDO_QTDERESTANTE.TAMANHO )   --COLUNA_ROW

       ,CASE @ACAO
          when 'IMPORTAR' then QTDERESTANTE
          when 'QUITAR'   then QTDERESTANTE
          when 'DIGITAR ' then '0'
          else
          '0'
       end

      , (VLR_UNITARIO  - ( VLR_UNITARIO * (@NDESCONTO / 100)) )

  FROM VIEW_PEDIDO_QTDERESTANTE 
  WHERE VIEW_PEDIDO_QTDERESTANTE.CODIGO=@NPEDIDO and TAMANHO<>'' AND QTDEVENDIDA>0
    
  );
   
END


GO
/****** Object:  StoredProcedure [dbo].[SPCTAPAGAR_MOVTO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPCTAPAGAR_MOVTO] (
    @NCODIGO integer,
    @NFORNECEDOR integer,
    @ACAO varchar(30))
as
begin

declare @CHK_BANCO varchar(1);
declare @CHK_CAIXA varchar(1);

/* ----------------------------------------------------------------------- */
  if (@ACAO='BAIXAR')  
  begin
     /* BAIXAR DOCUMENTO */
     update FIN_CTAPAGAR  set
        /* Quitado=[S]sim */
        FIN_CTAPAGAR.quitado        = 'S',
        /* Saldo restante */
        FIN_CTAPAGAR.VALOR_SALDO = (FIN_CTAPAGAR.valor - FIN_CTAPAGAR.valor_pago)

     where
        FIN_CTAPAGAR.CODIGO=@NCODIGO
        and
        FIN_CTAPAGAR.FORNECEDOR=@NFORNECEDOR;


     /* verificar se no parametro do sistema está definido que toda baixa
        contas a receber deve lançar no caixa */
     select @CHK_CAIXA=FINANCEIRO_PAGAR_LANCARCAIXA from CONFIG_PARAMETROS
   
   
     if (@CHK_CAIXA='S')  
     begin

           insert into ctrl_caixa (
                                    
                                   documento,
                                   PLN_CONTA,
                                   dc,
                                   data,
                                   historico,
                                   vlr_credito,
                                   vlr_debito,
                                   FORMA_PAGTO,
                                   efetivado,
                                   CONTACAIXA)
           values (

          
           'CTP-' + cast( (select CODIGO       from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR) as varchar(15)),
           (select PLANO_CONTAS            from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           'CREDITO',
           (select DATA_PAGTO           from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           'TITULO A PAGAR BAIXADO - DOCUMENTO: ' + (select DOCUMENTO        from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR) + ' - NOSSO NUMERO: ' + (select NOSSONUMERO        from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           0,
           (select valor_pago           from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           (select FORMA_PAGTO               from FIN_CTAPAGAR       where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           'N',
           (select CONTACAIXA               from FIN_CTAPAGAR       where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR)
           );


     end -- If (CHK_CAIXA='S')   (...)



     /* verificar se no parametro do sistema está definido que toda baixa
        contas a receber deve lançar no movimento bancário */
     select @CHK_BANCO=FINANCEIRO_PAGAR_LANCARBANCO from CONFIG_PARAMETROS
 
   
     if (@CHK_BANCO='S')  
     begin

           insert into CTRL_BANCARIO (
                                     
                                      documento,
                                      CTA_CORRENTE,
                                      PLN_CONTA,
                                      DC,
                                      DATA,
                                      HISTORICO,
                                      VLR_CREDITO,
                                      VLR_DEBITO)
           values (

        
           'CTP-' + cast( (select CODIGO       from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR) as varchar(15)),
           (select CONTA_CREDITO        from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           (select PLANO_CONTAS            from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           'CREDITO',
           (select DATA                 from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           'TITULO A PAGAR BAIXADO - DOCUMENTO: ' + (select DOCUMENTO        from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR) + ' - NOSSO NUMERO: ' + (select NOSSONUMERO        from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR),
           0,
           (select valor_pago           from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR)
           );

     end

  end


  /* ------------------------------------------------------------------ */

  /* ESTORNAR */
  if (@ACAO='ESTORNAR')  
  begin

     /* BAIXAR DOCUMENTO */
     update FIN_CTAPAGAR  set
        /* Quitado=[S]sim */
        FIN_CTAPAGAR.quitado        = 'N',
        FIN_CTAPAGAR.data_pagto     = null,
        FIN_CTAPAGAR.valor_pago     = 0,
        FIN_CTAPAGAR.VALOR_SALDO = 0
  
     where
        FIN_CTAPAGAR.CODIGO=@NCODIGO
        and
        FIN_CTAPAGAR.FORNECEDOR=@NFORNECEDOR;
  

     /* EXCLUIR LANÇAMENTO DO CONTROLE DE CAIXA */
     delete from ctrl_caixa
     where
        DOCUMENTO='CTP-' + cast( (select CODIGO       from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR) as varchar(15) );


     /* EXCLUIR LANÇAMENTO DO CONTROLE BANCARIO */
     delete from ctrl_bancario
     where
        DOCUMENTO='CTP-' + cast( (select CODIGO       from FIN_CTAPAGAR where  codigo=@NCODIGO and FORNECEDOR=@NFORNECEDOR) as varchar(15));


  end


end


GO
/****** Object:  StoredProcedure [dbo].[SPDELETA_COMPRA_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPDELETA_COMPRA_PRODUTOS] (
    @NEMPRESA integer,
    @NCOMPRA integer,
    @FORNECEDOR integer,
    @NOTAFISCAL integer)
as
begin


     delete from  FIN_CTApagar
     where
        EMPRESA=@NEMPRESA   
     and    
        FORNECEDOR=@FORNECEDOR
     and
        NOTAFISCAL=@NOTAFISCAL;


     /* REABRIR PEDIDO DE COMPRA */
     update COMPRA_PEDIDOS set EFETIVADO='N'
     where
        EMPRESA=@NEMPRESA   
     and    
        CODIGO=(SELECT COMPRAS.PEDIDOINTERNO  FROM COMPRAS WHERE COMPRAS.CODIGO=@NCOMPRA);


     /* deletar compra via tebela MESTRE. Por haver relacionamento,
     os itens da tabela DETALHE serão excluido automaticamente */
     delete from  COMPRAS
     where
        EMPRESA=@NEMPRESA   
     and    
       codigo =@NCOMPRA;


end


GO
/****** Object:  StoredProcedure [dbo].[SPDELETA_ORDEMCORTE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPDELETA_ORDEMCORTE] (
    @ORDEMPRODUCAO integer)
as
begin

  delete from  PCP_ORDEMCORTE
  where
     ORDEM_PRODUCAO=@ORDEMPRODUCAO

end


GO
/****** Object:  StoredProcedure [dbo].[SPFIN_COMISSAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[SPFIN_COMISSAO] (
    @NEMPRESA   ICODIGO,
    @NCLIENTE   ICODIGO,
    @NVENDEDOR  ICODIGO,
	@DDATA SDATE,
	@DVENCIMENTO SDATE,
	@NNOTAFISCAL ICODIGO,
	@NPEDIDO ICODIGO,
	@NFORMA_PAGTO ICODIGO,
	@NCONTA_CREDITO ICODIGO,
	@NCONTACAIXA ICODIGO,
	@NDEPARTAMENTO ICODIGO,
	@SPLANO_CONTAS SCODIGO,
	@SDOCUMENTO SCODIGO,
	@SORIGEM SCODIGO,
	@SDC SCODIGO,
	@NVALOR VALOR,
    @ACAO varchar(30)
    
    )
as
Begin

SET @ACAO='';

/*
  
   ------------------------------------------------------------------------
   -- "FECHAR" SIGNIFICA QUE A VENDA NÃO EFETIVADA (ABERTA) ESTÁ ENCERRADA
   ------------------------------------------------------------------------
   if (@ACAO='FECHAR')
   begin

      ------------------------------------------------------------------------
      -- lançar no caixa
      ------------------------------------------------------------------------
      if (SELECT FINANCEIRO_BALCAO_LANCARCAIXA FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA)='S'
      begin
         if (select VLR_CAIXA from VENDAS   where  CODIGO=@NVENDA)>0
         begin
            insert into ctrl_caixa (
                                documento,
                                dc,
                                data,
                                historico,
                                vlr_credito,
                                vlr_debito,
                                FORMA_PAGTO,
                                efetivado)
                        values (

                               'VNB-' + cast(@NVENDA as varchar(30)),
                               'CREDITO',
                               (select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA),
                               'Entrada em dinheiro  (na emissão da NF: ' + cast(@NVENDA as varchar(15)) + ')',
                               (select  top 1 VLR_CAIXA          from vendas       where  codigo=@NVENDA),
                               0,
                               (select  top 1 FORMAPAGTO        from vendas       where  codigo=@NVENDA),
                               'S'
                               );
         end
      end


      ------------------------------------------------------------------------
      -- LANÇAR NO CONTAS A RECEBER
      ------------------------------------------------------------------------
      if (select VLR_CAIXA from VENDAS   where  CODIGO=@NVENDA)>0
      begin
         insert into FIN_CTARECEBER (

                                     DATA,
                                     DATA_PAGTO,
                                     VALOR,
                                     VALOR_PAGO,
                                     VALOR_SALDO,
                                     VENDEDOR,
                                     CLIENTE,
                                     NOTAFISCAL,
                                     DOCUMENTO,
                                     VENCIMENTO,
                                     FORMA_PAGTO,
                                     QUITADO )
                     values (
                                     (select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA),
                                     (select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA),
                                     (select  top 1 vlr_caixa          from vendas       where  codigo=@NVENDA),
                                     (select  top 1 vlr_caixa          from vendas       where  codigo=@NVENDA),
                                     0,
                                     (select  top 1 vendedor           from vendas       where  codigo=@NVENDA),
                                     (select  top 1 cliente            from vendas       where  codigo=@NVENDA),
                                     (select  top 1 NOTAFISCAL          from vendas       where  codigo=@NVENDA),
                                     'VNB-' + cast(@NVENDA as varchar(30)),
                                     (select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA),
                                     (select  top 1 FORMAPAGTO        from vendas       where  codigo=@NVENDA),
                                     'S'
                                     );
      end

      ------------------------------------------------------------------------
      -- atualiza saldo restante do registro
      ------------------------------------------------------------------------
      update FIN_CTARECEBER set VALOR_SALDO=valor
      where
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1   NOTAFISCAL from vendas   where  codigo=@NVENDA)
      and
         FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas   where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      -- atualiza saldo restante do registro
      ------------------------------------------------------------------------
      update FIN_CTARECEBER set VALOR_SALDO=valor-valor_pago
      where
         FIN_CTARECEBER.valor_pago>0
      and
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
      and
         FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      -- se não foi definido vendedor, definir vendedor padrão
      ------------------------------------------------------------------------
      update FIN_CTARECEBER set vendedor=(select  VENDA_VENDEDOR from CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA) -- retornar o "vendedor padrão" definido nos parametros do sistema
      where
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
      and
         (FIN_CTARECEBER.vendedor is null) or (FIN_CTARECEBER.vendedor='0');


      ------------------------------------------------------------------------
      -- se não foi definido cliente, definir cliente padrão
      ------------------------------------------------------------------------
      update FIN_CTARECEBER set cliente=(select  VENDA_CLIENTE from CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA )   -- retornar o "cliente padrão" definido nos parametros do sistema
      where
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
      and
          (FIN_CTARECEBER.cliente is null) or (FIN_CTARECEBER.cliente='0');

      ------------------------------------------------------------------------
      -- FECHAR PEDIDO
      ------------------------------------------------------------------------
      update PEDIDOS set STATUS='S'
      where
         CODIGO=(select  top 1 PEDIDO            from vendas       where  codigo=@NVENDA)
      and
         CODIGO>0;

      ------------------------------------------------------------------------
      -- FECHAR CONFERENCIA
      ------------------------------------------------------------------------
      update PEDIDOCONFERENCIA set FATURADO='S'
      where
         CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)
      and
         CODIGO>0;

      ------------------------------------------------------------------------
      -- FECHAR VENDA
      ------------------------------------------------------------------------
      update VENDAS set STATUS='S'
      where
         CODIGO=@NVENDA;

      ------------------------------------------------------------------------
      -- CHECAR SE REGISTRO DO CONTAS A RECEBER TIVER DATA VENCIMENTO IGUAL
      -- A DATA DE EMISSÃO DEVERÁ OU NÃO SER LANÇADO NO CAIXA.
      ------------------------------------------------------------------------
      if ((SELECT FINANCEIRO_RECEBER_LANCARCAIXA FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA)='S')
          AND
         ((select  count(*) from FIN_CTARECEBER where FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas   where  codigo=@NVENDA) and FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas   where  codigo=@NVENDA))>0 )
      begin
         ------------------------------------------------------------------------
         -- SE NÃO EXISTE, ENTÃO ADICIONAR
         ------------------------------------------------------------------------
         if ( select  top 1 count(DOCUMENTO) from ctrl_caixa where DOCUMENTO='VNB-' + cast(@NVENDA as varchar(30)) and vlr_credito=(select  top 1  valor from FIN_CTARECEBER    where  NOTAFISCAL=@NVENDA and data=VENCIMENTO ) )<=0
         begin
            insert into ctrl_caixa (
                                    documento,
                                    dc,
                                    data,
                                    historico,
                                    vlr_credito,
                                    vlr_debito,
                                    FORMA_PAGTO,
                                    efetivado)
                            values (
                                   'VNB-' + cast(@NVENDA as varchar(30)),
                                   'CREDITO',
                                   (select  top 1  data                                 from FIN_CTARECEBER    where  NOTAFISCAL=@NVENDA and data=VENCIMENTO ),
                                   'Lançado pelo contas a receber (na emissão da NF: ' + cast(@NVENDA as varchar(30)) + ')',
                                   (select  top 1  valor                                from FIN_CTARECEBER    where  NOTAFISCAL=@NVENDA and data=VENCIMENTO ),
                                   0,
                                   (select  top 1  FORMA_PAGTO                               from FIN_CTARECEBER    where  NOTAFISCAL=@NVENDA and data=VENCIMENTO ),
                                   'S'
                                   );
         end

      end

      ------------------------------------------------------------------------
      -- LANÇAR COMISSÃO DO VENDEDOR/REPRESENTANTE
      -- COMO SENDO UMA DESPESA...  NO CONTAS A PAGAR
      ------------------------------------------------------------------------
      if (SELECT FINANCEIRO_PAGAR_COMISSAO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA)='NOTAFISCAL'
      begin

         ------------------------------------------------------------------------
         -- SOMENTE SE HOUVER VENDEDOR
         ------------------------------------------------------------------------
         if (select vendedor from vendas where  codigo=@NVENDA)>0
         begin
            insert into FIN_CTAPAGAR (

                                       DATA,
                                       VALOR,
                                       VALOR_SALDO,
                                       FORNECEDOR,
                                       NOTAFISCAL,
                                       DOCUMENTO,
                                       VENCIMENTO,
                                       FORMA_PAGTO,
                                       QUITADO,
                                       HISTORICO )
                               values (
                                      (select          EMISSAO                       from vendas            where  codigo=@NVENDA),
                                      (select  top 1   COMISSAO_VENDA                from VIEW_COMISSAO     where  NOTAFISCAL=(select   NOTAFISCAL          from vendas       where  codigo=@NVENDA)  ),
                                      0,
                                      (select          vendedor                      from vendas            where  codigo=@NVENDA),
                                      (select          NOTAFISCAL                    from vendas            where  codigo=@NVENDA) ,
                                      'NF-' +          cast((select   NOTAFISCAL     from vendas            where  codigo=@NVENDA) as varchar(30)),
                                      (select         (EMISSAO+30)                   from vendas            where  codigo=@NVENDA),
                                      (select          FORMAPAGTO                    from vendas            where  codigo=@NVENDA),
                                      'N',
                                      'COMISSAO A PAGAR PROVENIENTE DA NOTA FISCAL: '+CAST((select   NOTAFISCAL          from vendas       where  codigo=@NVENDA) AS VARCHAR(30))
                                      );
         end

      end

      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('N','NAO')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE -
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOCONFERENCIA_ITENS
                                                                              WHERE
                                                                                 PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End; --IF  EXISTS()


   end -- If (@ACAO='FECHAR')   ;



   ------------------------------------------------------------------------
   -- "ABRIR" SIGNIFICA QUE A VENDA EFETIVADA (FECHADA) ESTÁ SENDO
   --- DESFEITA E QUE TODOS OS VINCULOS DEVE SER EXCLUIDOS
   ------------------------------------------------------------------------
   if (@ACAO='ABRIR')
   begin

      ------------------------------------------------------------------------
      --  DELETAR LANÇAMENTO NO CAIXA (caso exista)
      ------------------------------------------------------------------------
      delete from ctrl_caixa
      where
         ctrl_caixa.documento='VNB-' + cast(@NVENDA as varchar(30))
      and
         ctrl_caixa.data=(select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      --  DELETAR DO CONTAS A RECEBER
      ------------------------------------------------------------------------
      delete from FIN_CTARECEBER
      where
         FIN_CTARECEBER.NOTAFISCAL=(select   NOTAFISCAL    from vendas       where  codigo=@NVENDA)
      and
         FIN_CTARECEBER.cliente=(select      cliente       from vendas       where  codigo=@NVENDA)
      and
         FIN_CTARECEBER.data=(select         EMISSAO       from vendas       where  codigo=@NVENDA);

      ------------------------------------------------------------------------
      --  RETORNAR AO ESTOUE
      ------------------------------------------------------------------------
      /*
      update CAD_PRODUTOS set ESTOQUESALDO=ESTOQUESALDO + (
                            select  top 1 QUANTIDADE from VENDAS_ITENS
                            where
                               CODIGO=@NVENDA
                            and
                               PRODUTO=CAD_PRODUTOS.REFERENCIA
                            )
      where
         CAD_PRODUTOS.REFERENCIA=(select  top 1 PRODUTO from VENDAS_ITENS where  CODIGO=@NVENDA and PRODUTO=CAD_PRODUTOS.REFERENCIA);
      */

      ------------------------------------------------------------------------
      --  REABRIR PEDIDO
      ------------------------------------------------------------------------
      update PEDIDOS set STATUS='N'
      where
         CODIGO=(select  top 1 PEDIDO from vendas       where  codigo=@NVENDA)   and   CODIGO>0;

      ------------------------------------------------------------------------
      --  REABRIR CONFERENCIA
      ------------------------------------------------------------------------
      update PEDIDOCONFERENCIA set FATURADO='N'
      where
         CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)  and  CODIGO>0;


      ------------------------------------------------------------------------
      --  DELETAR COMISSÃO DO CONTAS A PAGAR
      ------------------------------------------------------------------------
      delete from FIN_CTAPAGAR
      where
         FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
      and
         FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA);

      ------------------------------------------------------------------------
      --  REABRIR VENDA
      ------------------------------------------------------------------------
      update VENDAS set STATUS='N',
                        VLR_RECEBIDO=0,
                        VLR_CAIXA=0
      where
         CODIGO=@NVENDA;


      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('N','NAO')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOCONFERENCIA_ITENS
                                                                              WHERE
                                                                                 PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End; --IF  EXISTS()

   end -- if (@ACAO='ABRIR')    ;


   ------------------------------------------------------------------------
   --  "CANCELAR" SIGNIFICA QUE A VENDA EFETIVADA (FECHADA)
   --  ESTÁ SENDO DESFEITA
   ------------------------------------------------------------------------
   if (@ACAO IN ('C','CANCELAR'))
   begin
        ------------------------------------------------------------------------
        --  DELETAR LANÇAMENTO NO CAIXA (caso exista)
        ------------------------------------------------------------------------
       delete from ctrl_caixa
       where
          ctrl_caixa.documento='VNB-' + cast(@NVENDA as varchar(30))
       and
          ctrl_caixa.data=(select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA);


       ------------------------------------------------------------------------
       --  DELETAR DO CONTAS A RECEBER
       ------------------------------------------------------------------------
       delete from FIN_CTARECEBER
       where
          FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.data=(select  top 1 EMISSAO       from vendas       where  codigo=@NVENDA);

        ------------------------------------------------------------------------
        --  RETORNAR AO ESTOUE
        ------------------------------------------------------------------------
       /*
       update CAD_PRODUTOS set ESTOQUESALDO=ESTOQUESALDO + (
                             select  top 1 QUANTIDADE from VENDAS_ITENS
                             where
                                CODIGO=@NVENDA
                             and
                                PRODUTO=CAD_PRODUTOS.REFERENCIA
                             )
       where
          CAD_PRODUTOS.REFERENCIA=(select  top 1 PRODUTO from VENDAS_ITENS where  CODIGO=@NVENDA and PRODUTO=CAD_PRODUTOS.REFERENCIA);
       */

       ------------------------------------------------------------------------
       --  REABRIR PEDIDO
       ------------------------------------------------------------------------
       update PEDIDOS set STATUS='N'
       where
          CODIGO=(select  top 1 PEDIDO from vendas       where  codigo=@NVENDA)   and   CODIGO>0;

       ------------------------------------------------------------------------
       -- REABRIR CONFERENCIA
       ------------------------------------------------------------------------
       update PEDIDOCONFERENCIA set FATURADO='N'
       where
          CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)  and    CODIGO>0;

       ------------------------------------------------------------------------
       --  DELETAR COMISSÃO DO CONTAS A PAGAR
       ------------------------------------------------------------------------
       delete from FIN_CTAPAGAR
       where
          FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA);


       ------------------------------------------------------------------------
       -- INFORMAR "C=CANCELADO" NA VENDA
       ------------------------------------------------------------------------
       update VENDAS set STATUS='C',
                         VLR_RECEBIDO=0,
                         VLR_CAIXA=0
      where
          CODIGO=@NVENDA;


      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('N','NAO')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOCONFERENCIA_ITENS
                                                                              WHERE
                                                                                 PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End; --IF  EXISTS()


   end -- if (@ACAO IN ('C','CANCELAR'))

   ------------------------------------------------------------------------
   --  "CANCELAR" TUDO SIGNIFICA QUE A VENDA EFETIVADA (FECHADA)
   --  ESTÁ SENDO DESFEITA / CANCELA PEDIDO E CONFERENCIA
   ------------------------------------------------------------------------
   if (@ACAO IN ('CT','CANCELARTUDO'))
   begin
        ------------------------------------------------------------------------
        --  DELETAR LANÇAMENTO NO CAIXA (caso exista)
        ------------------------------------------------------------------------
       delete from ctrl_caixa
       where
          ctrl_caixa.documento='VNB-' + cast(@NVENDA as varchar(30))
       and
          ctrl_caixa.data=(select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA);


       ------------------------------------------------------------------------
       --  DELETAR DO CONTAS A RECEBER
       ------------------------------------------------------------------------
       delete from FIN_CTARECEBER
       where
          FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.data=(select  top 1 EMISSAO       from vendas       where  codigo=@NVENDA);

        ------------------------------------------------------------------------
        --  RETORNAR AO ESTOUE
        ------------------------------------------------------------------------
       /*
       update CAD_PRODUTOS set ESTOQUESALDO=ESTOQUESALDO + (
                             select  top 1 QUANTIDADE from VENDAS_ITENS
                             where
                                CODIGO=@NVENDA
                             and
                                PRODUTO=CAD_PRODUTOS.REFERENCIA
                             )
       where
          CAD_PRODUTOS.REFERENCIA=(select  top 1 PRODUTO from VENDAS_ITENS where  CODIGO=@NVENDA and PRODUTO=CAD_PRODUTOS.REFERENCIA);
       */

       ------------------------------------------------------------------------
       --  REABRIR PEDIDO
       ------------------------------------------------------------------------
       update PEDIDOS set STATUS='C'
       where
          CODIGO=(select  top 1 PEDIDO from vendas       where  codigo=@NVENDA)   and   CODIGO>0;

       ------------------------------------------------------------------------
       -- REABRIR CONFERENCIA
       ------------------------------------------------------------------------
       update PEDIDOCONFERENCIA set FATURADO='C'
       where
          CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)  and    CODIGO>0;

       ------------------------------------------------------------------------
       --  DELETAR COMISSÃO DO CONTAS A PAGAR
       ------------------------------------------------------------------------
       delete from FIN_CTAPAGAR
       where
          FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA);


       ------------------------------------------------------------------------
       -- INFORMAR "C=CANCELADO" NA VENDA
       ------------------------------------------------------------------------
       update VENDAS set STATUS='C',
                         VLR_RECEBIDO=0,
                         VLR_CAIXA=0
      where
          CODIGO=@NVENDA;


      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('N','NAO')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOCONFERENCIA_ITENS
                                                                              WHERE
                                                                                 PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End; --IF  EXISTS()


   end -- if (@ACAO IN ('CT','CANCELARTUDO'))


   ------------------------------------------------------------------------
   -- EXCLUIR VENDA
   ------------------------------------------------------------------------
   if (@ACAO='EXCLUIR')
   begin

       ------------------------------------------------------------------------
       -- DELETAR LANÇAMENTO NO CAIXA (caso exista)
       ------------------------------------------------------------------------
      delete from ctrl_caixa
      where
         ctrl_caixa.documento='VNB-' + cast(@NVENDA as varchar(30))
         and
         ctrl_caixa.data=(select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA);

      ------------------------------------------------------------------------
      -- DELETAR DO CONTAS A RECEBER
      ------------------------------------------------------------------------
      delete from FIN_CTARECEBER
      where
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
         and
         FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA)
         and
         FIN_CTARECEBER.data=(select  top 1 EMISSAO       from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      --  RETORNAR AO ESTOUE
      ------------------------------------------------------------------------
      /*
      update CAD_PRODUTOS set ESTOQUESALDO=ESTOQUESALDO + (
                            select  top 1 QUANTIDADE from VENDAS_ITENS
                            where
                               CODIGO=@NVENDA
                            and
                               PRODUTO=CAD_PRODUTOS.REFERENCIA
                            )
      where
         CAD_PRODUTOS.REFERENCIA=(select  top 1 PRODUTO from VENDAS_ITENS where  CODIGO=@NVENDA and PRODUTO=CAD_PRODUTOS.REFERENCIA);
      */


      ------------------------------------------------------------------------
      --  REABRIR PEDIDO
      ------------------------------------------------------------------------
      update PEDIDOS set STATUS='N'
      where
         CODIGO=(select  top 1 PEDIDO from vendas       where  codigo=@NVENDA)
      and
         CODIGO>0;


      ------------------------------------------------------------------------
       -- REABRIR CONFERENCIA
      ------------------------------------------------------------------------
      update PEDIDOCONFERENCIA set FATURADO='N'
      where
         CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)
      and
         CODIGO>0;

      ------------------------------------------------------------------------
      --  DELETAR COMISSÃO DO CONTAS A PAGAR
      ------------------------------------------------------------------------
      delete from FIN_CTAPAGAR
      where
         FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
         and
         FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA);



      ------------------------------------------------------------------------
      -- REABRIR VENDA
      ------------------------------------------------------------------------
      delete from  VENDAS
      where
         CODIGO=@NVENDA;


   end -- if (@ACAO='EXCLUIR')    ;


   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS SET 
      ESTOQUESALDO=COALESCE( (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE   CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA AND COR_ID>0 AND TAMANHO_ID>0 ),0)
   WHERE
      CAD_PRODUTOS.EMPRESA=@NEMPRESA
   AND
      CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA


*/


End


GO
/****** Object:  StoredProcedure [dbo].[SPFIN_CTAPAGAR_BAIXARLOTE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPFIN_CTAPAGAR_BAIXARLOTE] (
    @NEMPRESA        INTEGER,
    @DTVENCINICIO    DATE,
    @DTVENCFINAL     DATE,
    @NFORNECEDOR        INTEGER,
    @NMOTIVOBAIXA    INTEGER,
    @NCONTACORRENTE  INTEGER,
    @NCONTACAIXA     INTEGER,
    @ACAO VARCHAR(30))
AS
BEGIN

/* VARIAVEIS CRIADAS PARA EVITAR EXCESSO DE FILTROS.
   SUPONHAMOS QUE A VAIRIAVEL @NFORNECEDOR SEJA 0 (ZERO), COMO APLICAR O FILTRO?
   ENTA ESSAS VARIAVIES É PRA CRIAR UM INTERVALO EXTENSO (SELECIONAR TODOS OS CLIENTES AUTOMATICAMENTE).
   PRA QUE FUNCIONE CORRETAMENTE */

DECLARE @FN_INICIAL INTEGER=0;
DECLARE @FN_FINAL   INTEGER= 999999;


-- VALIDAR CONTEUDO DA VARIAVEIS COM VALOR INICIAL E FINAL
IF @NFORNECEDOR>0
BEGIN
   SET @FN_INICIAL=@NFORNECEDOR;
   SET @FN_FINAL=@NFORNECEDOR;
END

IF (@NEMPRESA<1) OR (@NEMPRESA IS NULL)
   SET @NEMPRESA=1;
  

  ------------------------------------------------------------------------
  -- "BAIXAR" SIGNIFICA QUE O TITULO FOI RECEBIDO/PAGO.
  ------------------------------------------------------------------------
  IF (@ACAO='BAIXAR')
  BEGIN
       ------------------------------------------------------------------------
       -- BAIXAR DOCUMENTO
       ------------------------------------------------------------------------
       UPDATE FIN_CTAPAGAR  SET  FIN_CTAPAGAR.VALOR_PAGO=FIN_CTAPAGAR.VALOR,
                                   FIN_CTAPAGAR.QUITADO='S',
                                   FIN_CTAPAGAR.DATA_PAGTO=GETDATE(),
                                   FIN_CTAPAGAR.MOTIVO_BAIXA=@NMOTIVOBAIXA,
                                   FIN_CTAPAGAR.CONTA_CREDITO=@NCONTACORRENTE,
                                   FIN_CTAPAGAR.CONTACAIXA=@NCONTACAIXA,
                                   FIN_CTAPAGAR.VALOR_SALDO = (FIN_CTAPAGAR.VALOR - FIN_CTAPAGAR.VALOR_PAGO)

       WHERE
          FIN_CTAPAGAR.EMPRESA=@NEMPRESA
       AND
          FIN_CTAPAGAR.VENCIMENTO BETWEEN @DTVENCINICIO AND @DTVENCFINAL
       AND
          FIN_CTAPAGAR.FORNECEDOR BETWEEN @FN_INICIAL AND @FN_FINAL
       AND
          FIN_CTAPAGAR.QUITADO='N'


  END --IF (@ACAO='BAIXAR')



END


GO
/****** Object:  StoredProcedure [dbo].[SPFIN_CTARECEBER_BAIXAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPFIN_CTARECEBER_BAIXAR] (
    @NEMPRESA integer=1,
    @NCODIGO integer,
    @NCLIENTE integer,
    @ACAO varchar(30))
as
Begin

  
  ------------------------------------------------------------------------
  -- "BAIXAR" SIGNIFICA QUE O TITULO FOI RECEBIDO/PAGO.
  ------------------------------------------------------------------------
  if (@ACAO='BAIXAR')
  begin
       ------------------------------------------------------------------------
       -- BAIXAR DOCUMENTO
       ------------------------------------------------------------------------
       update FIN_CTARECEBER  set  FIN_CTARECEBER.quitado='S',
                                   FIN_CTARECEBER.VALOR_SALDO = (FIN_CTARECEBER.valor - FIN_CTARECEBER.valor_pago)
       where
          FIN_CTARECEBER.CODIGO=@NCODIGO
       and
          FIN_CTARECEBER.CLIENTE=@NCLIENTE;

        ------------------------------------------------------------------------
        -- LANÇAR COMISSÃO DO VENDEDOR/REPRESENTANTE
        -- COMO SENDO UMA DESPESA...  NO CONTAS A PAGAR
        ------------------------------------------------------------------------
        if (SELECT FINANCEIRO_PAGAR_COMISSAO FROM CONFIG_PARAMETROS /*WHERE EMPRESA=@NEMPRESA*/)='RECEBIMENTO'
        begin
           ------------------------------------------------------------------------
           -- SOMENTE SE HOUVER VENDEDOR
           ------------------------------------------------------------------------
           if (select VENDEDOR from FIN_CTARECEBER where  codigo=@NCODIGO and CLIENTE=@NCLIENTE)>0
           begin
              insert into FIN_CTAPAGAR (

                                         DATA,
                                         VALOR,
                                         VALOR_SALDO,
                                         FORNECEDOR,
                                         NOTAFISCAL,
                                         DOCUMENTO,
                                         VENCIMENTO,
                                         FORMA_PAGTO,
                                         QUITADO,
                                         HISTORICO )
                          values (
                                        (select DATA_PAGTO                from   FIN_CTARECEBER                      where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                        (select COMISSAO_VALOR            from   VIEW_COMISSAO_FIN_CTARECEBER        where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                        (select COMISSAO_VALOR            from   VIEW_COMISSAO_FIN_CTARECEBER        where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                        (select VENDEDOR                  from   FIN_CTARECEBER                      where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                        (select NOTAFISCAL                from   FIN_CTARECEBER                      where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                        (select DOCUMENTO                 from   FIN_CTARECEBER                      where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                        (select DATA_PAGTO+30             from   FIN_CTARECEBER                      where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                        (select FORMA_PAGTO               from   FIN_CTARECEBER                      where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                        'N',
                                        'COMISSAO A PAGAR PROVENIENTE DE RECEBIMENTO DE CLIENTE - NOTAFISCAL: '+CAST((select NOTAFISCAL                from   FIN_CTARECEBER                      where  codigo=@NCODIGO and CLIENTE=@NCLIENTE) AS VARCHAR(30))
                                 );
            end

        end
      


       ------------------------------------------------------------------------
       -- LANÇAR NO CONTROLE DE CAIXA
       ------------------------------------------------------------------------
     
       IF (select FINANCEIRO_RECEBER_LANCARCAIXA from CONFIG_PARAMETROS)='S'
       begin
          insert into ctrl_caixa (
                                  documento,
                                  PLN_CONTA,
                                  dc,
                                  data,
                                  historico,
                                  vlr_credito,
                                  vlr_debito,
                                  FORMA_PAGTO,
                                  efetivado,
                                  CONTACAIXA)
                      values (
                                 'CTR-' + cast((select CODIGO        from FIN_CTARECEBER             where   codigo=@NCODIGO and CLIENTE=@NCLIENTE) as varchar(15) ),
                                 (select PLANO_CONTAS                from FIN_CTARECEBER             where   codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                 'CREDITO',
                                 (select DATA_PAGTO                  from FIN_CTARECEBER             where   codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                 'TITULO A RECEBER BAIXADO - DOCUMENTO: ' + (select DOCUMENTO        from    FIN_CTARECEBER where  codigo=@NCODIGO and CLIENTE=@NCLIENTE) + ' - NOSSO NUMERO: ' + (select NOSSONUMERO        from FIN_CTARECEBER where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                 (select valor_pago                   from FIN_CTARECEBER            where   codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                 0,
                                 (select FORMA_PAGTO                  from FIN_CTARECEBER            where   codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                 'N',
                                 (select CONTACAIXA                   from FIN_CTARECEBER            where   codigo=@NCODIGO and CLIENTE=@NCLIENTE)
                             );

       end -- If (CHK_CAIXA='S')   (...)
     


       ------------------------------------------------------------------------
       -- LANÇAR NO CONTROLE BANCARIO
       ------------------------------------------------------------------------
      
       IF ( select FINANCEIRO_RECEBER_LANCARBANCO from CONFIG_PARAMETROS)='S'
       begin

          insert into CTRL_BANCARIO (

                                     documento,
                                     CTA_CORRENTE,
                                     PLN_CONTA,
                                     DC,
                                     DATA,
                                     HISTORICO,
                                     VLR_CREDITO,
                                     VLR_DEBITO)
                      values (
                                    'CTR-' + cast((select CODIGO        from FIN_CTARECEBER          where   codigo=@NCODIGO   and     CLIENTE=@NCLIENTE) as varchar(15) ),
                                    (select CONTA_CREDITO               from FIN_CTARECEBER          where   codigo=@NCODIGO   and     CLIENTE=@NCLIENTE),
                                    (select PLANO_CONTAS                from FIN_CTARECEBER          where   codigo=@NCODIGO   and     CLIENTE=@NCLIENTE),
                                    'CREDITO',
                                    (select DATA                        from FIN_CTARECEBER          where   codigo=@NCODIGO   and     CLIENTE=@NCLIENTE),
                                    'TITULO A RECEBER BAIXADO - DOCUMENTO: ' + (select DOCUMENTO     from    FIN_CTARECEBER    where   codigo=@NCODIGO and CLIENTE=@NCLIENTE) + ' - NOSSO NUMERO: ' + (select NOSSONUMERO        from FIN_CTARECEBER where  codigo=@NCODIGO and CLIENTE=@NCLIENTE),
                                    (select valor_pago                  from FIN_CTARECEBER          where   codigo=@NCODIGO   and     CLIENTE=@NCLIENTE),
                                    0
          );

       end
       
       
       
  end --if (@ACAO='BAIXAR')
  

  ------------------------------------------------------------------------
  -- "ESTORNAR" SIGNIFICA QUE O TITULO FICARÁ ABERTO/PENDENTE
  ------------------------------------------------------------------------
  if (@ACAO='ESTORNAR')
  begin

       ------------------------------------------------------------------------
       -- INFORMAR QUE O DOCUMENTO FICARÁ ABERTO/PENDENTE E LIMPAR OS CAMPOS.
       ------------------------------------------------------------------------
       update FIN_CTARECEBER  set   FIN_CTARECEBER.quitado     = 'N',
                                    FIN_CTARECEBER.data_pagto  = null,
                                    FIN_CTARECEBER.valor_pago  = 0,
                                    FIN_CTARECEBER.VALOR_SALDO = 0
       where
          FIN_CTARECEBER.CODIGO=@NCODIGO
       and
          FIN_CTARECEBER.CLIENTE=@NCLIENTE;

       ------------------------------------------------------------------------
       -- EXCLUIR LANÇAMENTO DO CONTROLE DE CAIXA
       ------------------------------------------------------------------------
       delete from ctrl_caixa
       where
          DOCUMENTO='CTR-' + cast( (select CODIGO       from FIN_CTARECEBER       where  codigo=@NCODIGO and CLIENTE=@NCLIENTE) as varchar(15) );


       ------------------------------------------------------------------------
       -- EXCLUIR LANÇAMENTO DO CONTROLE BANCARIO
       ------------------------------------------------------------------------
       delete from ctrl_bancario
       where
          DOCUMENTO='CTR-' + cast( (select CODIGO       from FIN_CTARECEBER       where  codigo=@NCODIGO and CLIENTE=@NCLIENTE) as varchar(15) );


        ------------------------------------------------------------------------
        --  DELETAR COMISSÃO DO CONTAS A PAGAR
        ------------------------------------------------------------------------
       delete from FIN_CTAPAGAR
       where
         FIN_CTAPAGAR.NOTAFISCAL=(select NOTAFISCAL     from   FIN_CTARECEBER     where  codigo=@NCODIGO and CLIENTE=@NCLIENTE)
       and
         FIN_CTAPAGAR.FORNECEDOR=(select VENDEDOR       from   FIN_CTARECEBER     where  codigo=@NCODIGO and CLIENTE=@NCLIENTE)
       and
         FIN_CTAPAGAR.DOCUMENTO=(select DOCUMENTO       from   FIN_CTARECEBER     where  codigo=@NCODIGO and CLIENTE=@NCLIENTE);



  end --if (@ACAO='ESTORNAR')


End


GO
/****** Object:  StoredProcedure [dbo].[SPFIN_CTARECEBER_BAIXARLOTE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPFIN_CTARECEBER_BAIXARLOTE] (
    @NEMPRESA        INTEGER,
    @DTVENCINICIO    DATE,
    @DTVENCFINAL     DATE,
    @NCLIENTE        INTEGER,
    @NMOTIVOBAIXA    INTEGER,
    @NCONTACORRENTE  INTEGER,
    @NCONTACAIXA     INTEGER,
    @STIPO           SCODIGO,
    @ACAO			 SCODIGO
    )
AS
BEGIN

/* VARIAVEIS CRIADAS PARA EVITAR EXCESSO DE FILTROS.
   SUPONHAMOS QUE A VAIRIAVEL @NCLIENTE SEJA 0 (ZERO), COMO APLICAR O FILTRO?
   ENTA ESSAS VARIAVIES É PRA CRIAR UM INTERVALO EXTENSO (SELECIONAR TODOS OS CLIENTES AUTOMATICAMENTE).
   PRA QUE FUNCIONE CORRETAMENTE */

DECLARE @CL_INICIAL INTEGER=0;
DECLARE @CL_FINAL   INTEGER=999999;


-- VALIDAR CONTEUDO DA VARIAVEIS COM VALOR INICIAL E FINAL
IF @NCLIENTE>0
BEGIN
   SET @CL_INICIAL=@NCLIENTE;
   SET @CL_FINAL=@NCLIENTE;
END

IF (@NEMPRESA<1) OR (@NEMPRESA IS NULL)
   SET @NEMPRESA=1;
  

  -- raiserror 50001 @CL_FINAL;
  -- return;


  ------------------------------------------------------------------------
  -- "BAIXAR" SIGNIFICA QUE O TITULO FOI RECEBIDO/PAGO.
  ------------------------------------------------------------------------
  IF (@ACAO='BAIXAR')
  BEGIN
       ------------------------------------------------------------------------
       -- BAIXAR DOCUMENTO
       ------------------------------------------------------------------------
       UPDATE FIN_CTARECEBER  SET  FIN_CTARECEBER.VALOR_PAGO=FIN_CTARECEBER.VALOR,
                                   FIN_CTARECEBER.QUITADO='S',
                                   FIN_CTARECEBER.ESPECIE=@STIPO,
                                   FIN_CTARECEBER.DATA_PAGTO=GETDATE(),
                                   FIN_CTARECEBER.MOTIVO_BAIXA=@NMOTIVOBAIXA,
                                   FIN_CTARECEBER.CONTA_CREDITO=@NCONTACORRENTE,
                                   FIN_CTARECEBER.CONTACAIXA=@NCONTACAIXA,
                                   FIN_CTARECEBER.VALOR_SALDO = (FIN_CTARECEBER.VALOR - FIN_CTARECEBER.VALOR_PAGO)

       WHERE
          FIN_CTARECEBER.EMPRESA=@NEMPRESA
       AND
          FIN_CTARECEBER.VENCIMENTO BETWEEN @DTVENCINICIO AND @DTVENCFINAL
       AND
          FIN_CTARECEBER.CLIENTE BETWEEN @CL_INICIAL AND @CL_FINAL
       AND
          FIN_CTARECEBER.QUITADO='N'
       AND
          FIN_CTARECEBER.SELECIONADO='S'
       AND
          FIN_CTARECEBER.PAGAMENTOTITULO<>'S';
          

        ------------------------------------------------------------------------
        -- LANÇAR COMISSÃO DO VENDEDOR/REPRESENTANTE
        -- COMO SENDO UMA DESPESA...  NO CONTAS A PAGAR
        ------------------------------------------------------------------------
        IF (SELECT FINANCEIRO_PAGAR_COMISSAO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA)='RECEBIMENTO'
        BEGIN
            ------------------------------------------------------------------------
            -- MESCLAR SOMENTE SE HOUVER VENDEDOR
            ------------------------------------------------------------------------
            MERGE
               FIN_CTAPAGAR AS DESTINO
            USING
               (
               SELECT *  FROM FIN_CTARECEBER
               WHERE
                  FIN_CTARECEBER.EMPRESA=@NEMPRESA
               AND
                  FIN_CTARECEBER.VENCIMENTO BETWEEN @DTVENCINICIO AND @DTVENCFINAL
               AND
                  FIN_CTARECEBER.CLIENTE BETWEEN @CL_INICIAL AND @CL_FINAL
               AND
                  FIN_CTARECEBER.QUITADO='S'
               AND   
                  FIN_CTARECEBER.VENDEDOR>0 ) AS ORIGEM
            ON
               (DESTINO.FORNECEDOR = ORIGEM.CLIENTE
                AND
                DESTINO.NOTAFISCAL = ORIGEM.NOTAFISCAL
                AND
                DESTINO.DOCUMENTO = ORIGEM.DOCUMENTO
               )
            
            -- INSERIR SOMENTE SE HOUVER VENDEDOR
            WHEN NOT MATCHED BY TARGET  THEN
                        INSERT (
                              DATA,
                              PLANO_CONTAS,
                              DEPARTAMENTO,
                              CONTACAIXA,
                              VALOR,
                              VALOR_SALDO,
                              FORNECEDOR,
                              NOTAFISCAL,
                              DOCUMENTO,
                              VENCIMENTO,
                              FORMA_PAGTO,
                              QUITADO,                                                            
                              HISTORICO
                             )
                      VALUES (
                              DATA_PAGTO,
                              (SELECT FINANCEIRO_PAGAR_COMISSAOPLANOCONTA    FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA),
                              (SELECT FINANCEIRO_PAGAR_COMISSAOCENTROCUSTO   FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA),
                              (SELECT FINANCEIRO_PAGAR_COMISSAOCONTACAIXA    FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA),
                              (SELECT VIEW_COMISSAO_FIN_CTARECEBER.COMISSAO_VALOR            FROM   VIEW_COMISSAO_FIN_CTARECEBER        WHERE  VIEW_COMISSAO_FIN_CTARECEBER.CODIGO=ORIGEM.CODIGO AND CLIENTE=ORIGEM.CLIENTE),
                              (SELECT VIEW_COMISSAO_FIN_CTARECEBER.COMISSAO_VALOR            FROM   VIEW_COMISSAO_FIN_CTARECEBER        WHERE  VIEW_COMISSAO_FIN_CTARECEBER.CODIGO=ORIGEM.CODIGO AND CLIENTE=ORIGEM.CLIENTE),
                              VENDEDOR,
                              NOTAFISCAL,
                              DOCUMENTO,
                              DATA_PAGTO+coalesce((SELECT FINANCEIRO_PAGAR_COMISSAOVENCIMENTO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA),0),
                              FORMA_PAGTO,
                              'N',
                              'COMISSAO A PAGAR PROVENIENTE DE RECEBIMENTO DE CLIENTE - NOTA FISCAL: '+CAST(ORIGEM.NOTAFISCAL AS VARCHAR(30) )
                              ) 


           When Not Matched By Source Then
           Delete
           Output $action, inserted.*,    deleted.*;

           ------------------------------------------------------------------------
           -- MESCLAR / FIM
           ------------------------------------------------------------------------

        END



       /*
       ------------------------------------------------------------------------
       -- LANÇAR NO CONTROLE DE CAIXA
       ------------------------------------------------------------------------

       IF (SELECT FINANCEIRO_RECEBER_LANCARCAIXA FROM CONFIG_PARAMETROS)='S'
       BEGIN
          INSERT INTO CTRL_CAIXA (
                                  DOCUMENTO,
                                  PLN_CONTA,
                                  DC,
                                  DATA,
                                  HISTORICO,
                                  VLR_CREDITO,
                                  VLR_DEBITO,
                                  FORMA_PAGTO,
                                  EFETIVADO,
                                  CONTACAIXA)
                      VALUES (
                                 'CTR-' + CAST((SELECT CODIGO        FROM FIN_CTARECEBER             WHERE   CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE) AS VARCHAR(15) ),
                                 (SELECT PLANO_CONTAS                FROM FIN_CTARECEBER             WHERE   CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE),
                                 'CREDITO',
                                 (SELECT DATA_PAGTO                  FROM FIN_CTARECEBER             WHERE   CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE),
                                 'TITULO A RECEBER BAIXADO - DOCUMENTO: ' + (SELECT DOCUMENTO        FROM    FIN_CTARECEBER WHERE  CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE) + ' - NOSSO NUMERO: ' + (SELECT NOSSONUMERO        FROM FIN_CTARECEBER WHERE  CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE),
                                 (SELECT VALOR_PAGO                   FROM FIN_CTARECEBER            WHERE   CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE),
                                 0,
                                 (SELECT FORMA_PAGTO                  FROM FIN_CTARECEBER            WHERE   CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE),
                                 'N',
                                 (SELECT CONTACAIXA                   FROM FIN_CTARECEBER            WHERE   CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE)
                             );

       END -- IF (CHK_CAIXA='S')   (...)



       ------------------------------------------------------------------------
       -- LANÇAR NO CONTROLE BANCARIO
       ------------------------------------------------------------------------

       IF ( SELECT FINANCEIRO_RECEBER_LANCARBANCO FROM CONFIG_PARAMETROS)='S'
       BEGIN

          INSERT INTO CTRL_BANCARIO (

                                     DOCUMENTO,
                                     CTA_CORRENTE,
                                     PLN_CONTA,
                                     DC,
                                     DATA,
                                     HISTORICO,
                                     VLR_CREDITO,
                                     VLR_DEBITO)
                      VALUES (
                                    'CTR-' + CAST((SELECT CODIGO        FROM FIN_CTARECEBER          WHERE   CODIGO=@NCODIGO   AND     CLIENTE=@NCLIENTE) AS VARCHAR(15) ),
                                    (SELECT CONTA_CREDITO               FROM FIN_CTARECEBER          WHERE   CODIGO=@NCODIGO   AND     CLIENTE=@NCLIENTE),
                                    (SELECT PLANO_CONTAS                FROM FIN_CTARECEBER          WHERE   CODIGO=@NCODIGO   AND     CLIENTE=@NCLIENTE),
                                    'CREDITO',
                                    (SELECT DATA                        FROM FIN_CTARECEBER          WHERE   CODIGO=@NCODIGO   AND     CLIENTE=@NCLIENTE),
                                    'TITULO A RECEBER BAIXADO - DOCUMENTO: ' + (SELECT DOCUMENTO     FROM    FIN_CTARECEBER    WHERE   CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE) + ' - NOSSO NUMERO: ' + (SELECT NOSSONUMERO        FROM FIN_CTARECEBER WHERE  CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE),
                                    (SELECT VALOR_PAGO                  FROM FIN_CTARECEBER          WHERE   CODIGO=@NCODIGO   AND     CLIENTE=@NCLIENTE),
                                    0
          );

       END
       */



  END --IF (@ACAO='BAIXAR')


  ------------------------------------------------------------------------
  -- "ESTORNAR" SIGNIFICA QUE O TITULO FICARÁ ABERTO/PENDENTE
  ------------------------------------------------------------------------
  IF (@ACAO='ESTORNAR')
  BEGIN

       ------------------------------------------------------------------------
       -- INFORMAR QUE O DOCUMENTO FICARÁ ABERTO/PENDENTE E LIMPAR OS CAMPOS.
       ------------------------------------------------------------------------
       UPDATE FIN_CTARECEBER  SET  FIN_CTARECEBER.VALOR_PAGO=0,
                                   FIN_CTARECEBER.QUITADO='N',
                                   FIN_CTARECEBER.MOTIVO_BAIXA=0,
                                   FIN_CTARECEBER.CONTA_CREDITO=0,
                                   FIN_CTARECEBER.CONTACAIXA=0,
                                   FIN_CTARECEBER.VALOR_SALDO=FIN_CTARECEBER.VALOR

       WHERE
          FIN_CTARECEBER.EMPRESA=@NEMPRESA
       AND
          FIN_CTARECEBER.VENCIMENTO BETWEEN @DTVENCINICIO AND @DTVENCFINAL
       AND
          FIN_CTARECEBER.CLIENTE BETWEEN @CL_INICIAL AND @CL_FINAL
       AND
          FIN_CTARECEBER.QUITADO='S'


       /*
       ------------------------------------------------------------------------
       -- EXCLUIR LANÇAMENTO DO CONTROLE DE CAIXA
       ------------------------------------------------------------------------
       DELETE FROM CTRL_CAIXA
       WHERE
          DOCUMENTO='CTR-' + CAST( (SELECT CODIGO       FROM FIN_CTARECEBER       WHERE  CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE) AS VARCHAR(15) );


       ------------------------------------------------------------------------
       -- EXCLUIR LANÇAMENTO DO CONTROLE BANCARIO
       ------------------------------------------------------------------------
       DELETE FROM CTRL_BANCARIO
       WHERE
          DOCUMENTO='CTR-' + CAST( (SELECT CODIGO       FROM FIN_CTARECEBER       WHERE  CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE) AS VARCHAR(15) );


        ------------------------------------------------------------------------
        --  DELETAR COMISSÃO DO CONTAS A PAGAR
        ------------------------------------------------------------------------
       DELETE FROM FIN_CTAPAGAR
       WHERE
         FIN_CTAPAGAR.NOTAFISCAL=(SELECT NOTAFISCAL     FROM   FIN_CTARECEBER     WHERE  CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE)
       AND
         FIN_CTAPAGAR.FORNECEDOR=(SELECT VENDEDOR       FROM   FIN_CTARECEBER     WHERE  CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE)
       AND
         FIN_CTAPAGAR.DOCUMENTO=(SELECT DOCUMENTO       FROM   FIN_CTARECEBER     WHERE  CODIGO=@NCODIGO AND CLIENTE=@NCLIENTE);
        */



  END --IF (@ACAO='ESTORNAR')


END


GO
/****** Object:  StoredProcedure [dbo].[SPGRADES_CT]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[SPGRADES_CT] (
  @REFERENCIA varchar(30),
  @GRADECORES varchar(100) OUTPUT,
  @GRADE_TAMANHOS varchar(100) OUTPUT
  )
as

begin

-- Declare the variables to store the values returned by FETCH.
DECLARE @CODIGO integer, @DESCRICAO varchar(50);
declare @TCORES varchar(200) ;
declare @TTAMANHOS varchar(200) ;
declare @TMP_STRING varchar(200) ;
declare @CONTADOR integer;

DECLARE grade_cores_cursor CURSOR FOR


select DISTINCT(COR)
   from VIEW_GRADEREFERENCIA
   where
     referencia=@referencia
     
OPEN grade_cores_cursor;

-- Perform the first fetch and store the values in variables.
-- Note: The variables are in the same order as the columns
-- in the SELECT statement. 

FETCH NEXT FROM grade_cores_cursor
INTO @TCORES;

-- Check @@FETCH_STATUS to see if there are any more rows to fetch.
WHILE @@FETCH_STATUS = 0
BEGIN

      /* ----------------------------------------------------------- */
      /* monstar grade de cores */
      /* ----------------------------------------------------------- */
      if (@TMP_STRING<>@TCORES)  
      begin
         set @TMP_STRING = @TCORES;
         set @CONTADOR   = @CONTADOR + 1;

         -- não adicionar "PIPE"
         if (@CONTADOR<=1)  
         begin
            set @GRADECORES=@GRADECORES+@TCORES;
         end;

         -- adicionar "PIPE"
         if (@CONTADOR>1)  
         begin
            set @GRADECORES=@GRADECORES + ' | '  + @TCORES;
         end;

      end
   
   
   
   
   

   -- This is executed as long as the previous fetch succeeds.
   FETCH NEXT FROM grade_cores_cursor
   INTO @TCORES;
   
END




CLOSE grade_cores_cursor;
DEALLOCATE grade_cores_cursor;

--
--
--


DECLARE grade_tamanhos_cursor CURSOR FOR

   select DISTINCT(TAMANHO)
   from VIEW_GRADEREFERENCIA
   where
     referencia=@referencia

OPEN grade_tamanhos_cursor;

-- Perform the first fetch and store the values in variables.
-- Note: The variables are in the same order as the columns
-- in the SELECT statement. 

FETCH NEXT FROM grade_tamanhos_cursor
INTO @TCORES;

-- Check @@FETCH_STATUS to see if there are any more rows to fetch.
WHILE @@FETCH_STATUS = 0
BEGIN

      /* ----------------------------------------------------------- */
      /* monstar grade de tamanhos */
      /* ----------------------------------------------------------- */
      if (@TMP_STRING<>@ttamanhos)  
      begin
         set @TMP_STRING  = @ttamanhos;
         set @contador    = @contador + 1;

         -- não adicionar "PIPE"
         if (@contador<=1)  
         begin
            set @GRADE_TAMANHOS=@GRADE_TAMANHOS + @ttamanhos;
         end

         -- adicionar "PIPE"
         if (@contador>1)  
         begin
            set @GRADE_TAMANHOS=@GRADE_TAMANHOS + ' | ' + @ttamanhos;
         end

      end


   -- This is executed as long as the previous fetch succeeds.
   FETCH NEXT FROM grade_tamanhos_cursor
   INTO @TCORES;
END

-- fechar cursores



CLOSE grade_tamanhos_cursor;
DEALLOCATE grade_tamanhos_cursor;


end


GO
/****** Object:  StoredProcedure [dbo].[SPLIMPAR_TABELAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[SPLIMPAR_TABELAS] 
AS
BEGIN

   UPDATE CAD_PRODUTOS SET ESTOQUESALDO=0
   WHERE
   CAD_PRODUTOS.CODIGO = (SELECT CAD_PRODUTOS_GRADES.CODIGO FROM CAD_PRODUTOS_GRADES WHERE CAD_PRODUTOS_GRADES.CODIGO=CAD_PRODUTOS.CODIGO );
   
   DELETE FROM CAD_PRODUTOS_GRADES;
   --DELETE FROM CAD_PRODUTOS_MOVIMENTACAO;
   DELETE FROM PCP_DISTRIBUIR;
   DELETE FROM PCP_ORDEMPRODUCAO;
   DELETE FROM PCP_ORDEMCORTE;
   DELETE FROM PEDIDOS;
   
END


GO
/****** Object:  StoredProcedure [dbo].[SPMVTO_PRODUTOSATUALIZA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMVTO_PRODUTOSATUALIZA]
as
BEGIN

   -- ***************************************************************
   -- ***             ATUALIZA MOVIMENTAÇÃO (PRODUZIR)         ******
   -- ***************************************************************
   UPDATE MOVIMENTOS_PRODUTOS   SET MOVIMENTOS_PRODUTOS.QTDE_PRODUZIR=
                                                                      --MOVIMENTOS_PRODUTOS.QTDE_PRODUZIR+
                                                                      coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=MOVIMENTOS_PRODUTOS.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=MOVIMENTOS_PRODUTOS.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=MOVIMENTOS_PRODUTOS.TAMANHO_ID
                                                                     AND 
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S'  ) ,0)
   WHERE
      MOVIMENTOS_PRODUTOS.EMPRESA=MOVIMENTOS_PRODUTOS.EMPRESA
   AND
      MOVIMENTOS_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA
   AND
      MOVIMENTOS_PRODUTOS.COR_ID=MOVIMENTOS_PRODUTOS.COR_ID
   AND
      MOVIMENTOS_PRODUTOS.TAMANHO_ID=MOVIMENTOS_PRODUTOS.TAMANHO_ID;
   

   -- ***************************************************************
   -- ***             ATUALIZA MOVIMENTAÇÃO (VENDIDOS)         ******
   -- ***************************************************************
   UPDATE MOVIMENTOS_PRODUTOS   SET MOVIMENTOS_PRODUTOS.QTDE_VENDIDO=coalesce(( SELECT SUM(QTDE_PECAS) AS QTDE_PECAS FROM PEDIDOS_MOVIMENTO
                                                                     WHERE
                                                                        PEDIDOS_MOVIMENTO.EMPRESA=MOVIMENTOS_PRODUTOS.EMPRESA
                                                                     AND
                                                                        PEDIDOS_MOVIMENTO.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA
                                                                     AND
                                                                        PEDIDOS_MOVIMENTO.COR_ID=MOVIMENTOS_PRODUTOS.COR_ID
                                                                     AND
                                                                        PEDIDOS_MOVIMENTO.TAMANHO_ID=MOVIMENTOS_PRODUTOS.TAMANHO_ID
                                                                     AND 
                                                                        PEDIDOS_MOVIMENTO.APROVADO='S'  ) ,0)
   WHERE
      MOVIMENTOS_PRODUTOS.EMPRESA=MOVIMENTOS_PRODUTOS.EMPRESA
   AND
      MOVIMENTOS_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA
   AND
      MOVIMENTOS_PRODUTOS.COR_ID=MOVIMENTOS_PRODUTOS.COR_ID
   AND
      MOVIMENTOS_PRODUTOS.TAMANHO_ID=MOVIMENTOS_PRODUTOS.TAMANHO_ID;



   -- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
   -- Ultima Etapa: Atualizar todos os campos.
   -- ***************************************************************
   -- ***  ATUALIZA MOVIMENTAÇÃO (CAMPOS)                      ******
   -- ***************************************************************

   UPDATE MOVIMENTOS_PRODUTOS
      SET QTDE_PRODUZINDO  = QTDE_PRODUZIR - QTDE_PRODUZIDO;

   UPDATE MOVIMENTOS_PRODUTOS 
      SET QTDE_DEMANDA =  ( COALESCE(
                         (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES
                          WHERE 
                          --CAD_PRODUTOS_GRADES.EMPRESA=MOVIMENTOS_PRODUTOS.EMPRESA
                          --AND
                          CAD_PRODUTOS_GRADES.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADES.COR_ID=MOVIMENTOS_PRODUTOS.COR_ID
                          AND
                          CAD_PRODUTOS_GRADES.TAMANHO_ID=MOVIMENTOS_PRODUTOS.TAMANHO_ID
                         )
    
                         ,0) + COALESCE( QTDE_PRODUZINDO,0) - COALESCE( QTDE_VENDIDO,0)  );
  

END


GO
/****** Object:  StoredProcedure [dbo].[SPNFE_CALCULA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPNFE_CALCULA] (
    @NEMPRESA integer,
    @NCODIGO integer,
    @ACAO varchar(20))
as
begin

DECLARE @DESCONTOREFERENCIA  FLOAT=0;
DECLARE @DESCONTOVENDA       FLOAT=0;
 
 SET @DESCONTOVENDA=coalesce( (select sum(VENDAS.DESCONTO)     from  VENDAS where VENDAS.EMPRESA=@NEMPRESA AND  VENDAS.CODIGO=@NCODIGO),0);
 SET @DESCONTOREFERENCIA=coalesce( (select sum(VENDAS.DESCONTO)     from  VENDAS where VENDAS.EMPRESA=@NEMPRESA AND  VENDAS.CODIGO=@NCODIGO),0);
 --SET @DESCONTOREFERENCIA=0;


   ------------------------------------------------------------------------
   -- "SAIDA"
   ------------------------------------------------------------------------
   if (@ACAO='SAIDA')
   begin
      update VENDAS_ITENS  set
         VLR_TOTAL=(QUANTIDADE * VLR_UNIT)
      where
         CODIGO=@NCODIGO;

      /* calcular desconto  */
      update VENDAS_ITENS  set
         VLR_DESCONTO=( (VLR_TOTAL * (@DESCONTOREFERENCIA / 100))  )
      where
         codigo =@NCODIGO;

      /*
      /* efetua desconto informado pelo usuário */
      update VENDAS_ITENS  set
         VLR_TOTAL=VLR_TOTAL-( (VLR_TOTAL * (@DESCONTOREFERENCIA / 100))  )
      where
         codigo =@NCODIGO;
      */

      /* calcula valor do ICMS */
      update VENDAS_ITENS  set
         VLR_ICMS=( (VLR_TOTAL * (ICMS / 100))  )
      where
         codigo =@NCODIGO;


      /* calcula valor do IPI */
      update VENDAS_ITENS  set
         VLr_IPI=( (VLR_TOTAL * (IPI / 100))  )
      where
         codigo =@NCODIGO;

      /* ******************************************************** */
      /*   FASE 2@      CALCULAR NOTA FISCAL VENDA                */
      /*                QUANTIDADE, DESCONTOS                     */
      /* ******************************************************** */

      -- somar total da venda
      update VENDAS  set
         -- QUANTIDADE TOTAL DE PRODUTOS
         VENDAS.QTDE_PRODUTOS   = coalesce( (select sum(VENDAS_ITENS.QUANTIDADE)         from  VENDAS_ITENS where  VENDAS_ITENS.CODIGO=@NCODIGO), 0),

         -- VALOR TOTAL DOS PRODUTOS
         --VENDAS.VALOR_PRODUTOS  = coalesce( (select sum(VENDAS_ITENS.VLR_TOTAL)     from  VENDAS_ITENS where  VENDAS_ITENS.CODIGO=@NCODIGO),0)
         VENDAS.VALOR_PRODUTOS  = coalesce( (select sum((QUANTIDADE * VLR_UNIT))     from  VENDAS_ITENS where  VENDAS_ITENS.CODIGO=@NCODIGO),0)

      where
        CODIGO=@NCODIGO;

      /* ******************************************************** */
      /*   FASE 3@      CALCULAR NOTA FISCAL VENDA                */
      /*                IMPOSTOS                                  */
      /* ******************************************************** */


     /***********************************************************************
     ** De acordo com o Ministério da Fazenda - 2012:                    ***
     **    1 – Simples Nacional                                          ***
     **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
     **    3 – Regime Normal                                             ***
     ***********************************************************************
     **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
     **********************************************************************/
      IF  EXISTS((SELECT  EMPRESA_REGIMETRIBUTARIO FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.EMPRESA_REGIMETRIBUTARIO IN (1,2)))
      BEGIN
         -- BASE DE CALCULO DO ICMS
         UPDATE VENDAS  SET
            VENDAS.ICMS_BASECALCULO   = 0
         WHERE
           CODIGO=@NCODIGO;
      END;
      

      IF  EXISTS((SELECT  EMPRESA_REGIMETRIBUTARIO FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.EMPRESA_REGIMETRIBUTARIO=3))
      BEGIN
         -- BASE DE CALCULO DO ICMS
         UPDATE VENDAS  SET
            -- VALOR TOTAL DOS PRODUTOS
            VENDAS.ICMS_BASECALCULO   = COALESCE( (SELECT SUM(VENDAS_ITENS.VLR_TOTAL)     FROM  VENDAS_ITENS WHERE  VENDAS_ITENS.CODIGO=@NCODIGO),0)
         WHERE
           CODIGO=@NCODIGO;
      END;
      

      -- VALOR DO ICMS
      update VENDAS  set
         -- VALOR TOTAL DO ICMS
         VENDAS.ICMS_VALOR=coalesce( (select sum(VENDAS_ITENS.VLR_ICMS)     from  VENDAS_ITENS where  VENDAS_ITENS.CODIGO=@NCODIGO),0)

      where
        CODIGO=@NCODIGO;

      -- VALOR DO IPI
      update VENDAS  set
         -- VALOR TOTAL DO IPI
         VENDAS.IPI_VALOR=coalesce( (select sum(VENDAS_ITENS.VLR_IPI)     from  VENDAS_ITENS where  VENDAS_ITENS.CODIGO=@NCODIGO),0)

      where
        CODIGO=@NCODIGO;


      /* ******************************************************** */
      /*   FASE 4@      CALCULAR NOTA FISCAL VENDA                */
      /*                TOTAL FINAL DA NOTA FISCAL                */
      /* ******************************************************** */


      /* calcular desconto  */
      update VENDAS  set
         --VLR_DESCONTO=( (VALOR_PRODUTOS * ( @DESCONTOVENDA / 100))  )
         VLR_DESCONTO=coalesce( (select sum(VENDAS_ITENS.VLR_DESCONTO)     from  VENDAS_ITENS where  VENDAS_ITENS.CODIGO=@NCODIGO),0)
      where
         codigo =@NCODIGO;

      -- somar total da venda
      update VENDAS  set
         -- VALOR TOTAL DA NOTA FISCAL
         VENDAS.TOTAL_NF   = (VENDAS.VALOR_PRODUTOS +
                              VENDAS.VLR_FRETE      +
                              VENDAS.VLR_SEGURO     +
                              VENDAS.VLR_DESPESAS_ASSESSORIAS  +
                              VENDAS.IPI_VALOR
                              )
      where
        CODIGO=@NCODIGO;


      /* efetua desconto informado pelo usuário */
      update VENDAS  set
         TOTAL_NF=TOTAL_NF - VLR_DESCONTO
      where
         codigo =@NCODIGO;


     /* calcula valor do ICMS no simples nacional */
      update VENDAS  set
         SIMPLESNACIONAL_VALOR =( (VALOR_PRODUTOS  *
                                   (Coalesce((select  EMPRESA_REGIMETRIBUTARIOALIQUOTA from CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=VENDAS.EMPRESA),0)
                                   / 100))  )
      where
         codigo =@NCODIGO;


      /* efetua desconto informado pelo usuário */
      update VENDAS  set
         TOTAL_NF=TOTAL_NF + VENDAS.IPI_VALOR
      where
         codigo =@NCODIGO;
   end


   ------------------------------------------------------------------------
   -- "ENTRADA"
   ------------------------------------------------------------------------
   if (@ACAO='ENTRADA') OR (@ACAO='DEVOLVER')
   begin
      update VENDAS_DEVOLUCAO_ITENS  set
         VLR_TOTAL=(QUANTIDADE * VLR_UNIT)
      where
         CODIGO=@NCODIGO;

      /* calcular desconto  */
      update VENDAS_DEVOLUCAO_ITENS  set
         VLR_DESCONTO=( (VLR_TOTAL * (@DESCONTOREFERENCIA / 100))  )
      where
         codigo =@NCODIGO;

      /*
      /* efetua desconto informado pelo usuário */
      update VENDAS_DEVOLUCAO_ITENS  set
         VLR_TOTAL=VLR_TOTAL-( (VLR_TOTAL * (@DESCONTOREFERENCIA / 100))  )
      where
         codigo =@NCODIGO;
      */

      /* calcula valor do ICMS */
      update VENDAS_DEVOLUCAO_ITENS  set
         VLR_ICMS=( (VLR_TOTAL * (ICMS / 100))  )
      where
         codigo =@NCODIGO;


      /* calcula valor do IPI */
      update VENDAS_DEVOLUCAO_ITENS  set
         VLr_IPI=( (VLR_TOTAL * (IPI / 100))  )
      where
         codigo =@NCODIGO;

      /* ******************************************************** */
      /*   FASE 2@      CALCULAR NOTA FISCAL VENDA                */
      /*                QUANTIDADE, DESCONTOS                     */
      /* ******************************************************** */

      -- somar total da venda
      update VENDAS  set
         -- QUANTIDADE TOTAL DE PRODUTOS
         VENDAS.QTDE_PRODUTOS   = coalesce( (select sum(VENDAS_DEVOLUCAO_ITENS.QUANTIDADE)         from  VENDAS_DEVOLUCAO_ITENS where  VENDAS_DEVOLUCAO_ITENS.CODIGO=@NCODIGO), 0),

         -- VALOR TOTAL DOS PRODUTOS
         --VENDAS.VALOR_PRODUTOS  = coalesce( (select sum(VENDAS_DEVOLUCAO_ITENS.VLR_TOTAL)     from  VENDAS_DEVOLUCAO_ITENS where  VENDAS_DEVOLUCAO_ITENS.CODIGO=@NCODIGO),0)
         VENDAS.VALOR_PRODUTOS  = coalesce( (select sum((QUANTIDADE * VLR_UNIT))     from  VENDAS_DEVOLUCAO_ITENS where  VENDAS_DEVOLUCAO_ITENS.CODIGO=@NCODIGO),0)

      where
        CODIGO=@NCODIGO;

      /* ******************************************************** */
      /*   FASE 3@      CALCULAR NOTA FISCAL VENDA                */
      /*                IMPOSTOS                                  */
      /* ******************************************************** */


     /***********************************************************************
     ** De acordo com o Ministério da Fazenda - 2012:                    ***
     **    1 – Simples Nacional                                          ***
     **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
     **    3 – Regime Normal                                             ***
     ***********************************************************************
     **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
     **********************************************************************/
      IF  EXISTS((SELECT  EMPRESA_REGIMETRIBUTARIO FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.EMPRESA_REGIMETRIBUTARIO IN (1,2)))
      BEGIN
         -- BASE DE CALCULO DO ICMS
         UPDATE VENDAS  SET
            VENDAS.ICMS_BASECALCULO   = 0
         WHERE
           CODIGO=@NCODIGO;
      END;


      IF  EXISTS((SELECT  EMPRESA_REGIMETRIBUTARIO FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.EMPRESA_REGIMETRIBUTARIO=3))
      BEGIN
         -- BASE DE CALCULO DO ICMS
         UPDATE VENDAS  SET
            -- VALOR TOTAL DOS PRODUTOS
            VENDAS.ICMS_BASECALCULO   = COALESCE( (SELECT SUM(VENDAS_DEVOLUCAO_ITENS.VLR_TOTAL)     FROM  VENDAS_DEVOLUCAO_ITENS WHERE  VENDAS_DEVOLUCAO_ITENS.CODIGO=@NCODIGO),0)
         WHERE
           CODIGO=@NCODIGO;
      END;


      -- VALOR DO ICMS
      update VENDAS  set
         -- VALOR TOTAL DO ICMS
         VENDAS.ICMS_VALOR=coalesce( (select sum(VENDAS_DEVOLUCAO_ITENS.VLR_ICMS)     from  VENDAS_DEVOLUCAO_ITENS where  VENDAS_DEVOLUCAO_ITENS.CODIGO=@NCODIGO),0)

      where
        CODIGO=@NCODIGO;

      -- VALOR DO IPI
      update VENDAS  set
         -- VALOR TOTAL DO IPI
         VENDAS.IPI_VALOR=coalesce( (select sum(VENDAS_DEVOLUCAO_ITENS.VLR_IPI)     from  VENDAS_DEVOLUCAO_ITENS where  VENDAS_DEVOLUCAO_ITENS.CODIGO=@NCODIGO),0)

      where
        CODIGO=@NCODIGO;


      /* ******************************************************** */
      /*   FASE 4@      CALCULAR NOTA FISCAL VENDA                */
      /*                TOTAL FINAL DA NOTA FISCAL                */
      /* ******************************************************** */


      /* calcular desconto  */
      update VENDAS  set
         --VLR_DESCONTO=( (VALOR_PRODUTOS * ( @DESCONTOVENDA / 100))  )
         VLR_DESCONTO=coalesce( (select sum(VENDAS_DEVOLUCAO_ITENS.VLR_DESCONTO)     from  VENDAS_DEVOLUCAO_ITENS where  VENDAS_DEVOLUCAO_ITENS.CODIGO=@NCODIGO),0)
      where
         codigo =@NCODIGO;

      -- somar total da venda
      update VENDAS  set
         -- VALOR TOTAL DA NOTA FISCAL
         VENDAS.TOTAL_NF   = (VENDAS.VALOR_PRODUTOS +
                              VENDAS.VLR_FRETE      +
                              VENDAS.VLR_SEGURO     +
                              VENDAS.VLR_DESPESAS_ASSESSORIAS  +
                              VENDAS.IPI_VALOR
                              )
      where
        CODIGO=@NCODIGO;


      /* efetua desconto informado pelo usuário */
      update VENDAS  set
         TOTAL_NF=TOTAL_NF - VLR_DESCONTO
      where
         codigo =@NCODIGO;


     /* calcula valor do ICMS no simples nacional */
      update VENDAS  set
         SIMPLESNACIONAL_VALOR =( (VALOR_PRODUTOS  *
                                   (Coalesce((select  EMPRESA_REGIMETRIBUTARIOALIQUOTA from CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=VENDAS.EMPRESA),0)
                                   / 100))  )
      where
         codigo =@NCODIGO;


      /* efetua desconto informado pelo usuário */
      update VENDAS  set
         TOTAL_NF=TOTAL_NF + VENDAS.IPI_VALOR
      where
         codigo =@NCODIGO;
   end


end


GO
/****** Object:  StoredProcedure [dbo].[SPNFE_DEVOLVER]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPNFE_DEVOLVER]  (
    @NEMPRESA integer=1,
    @NVENDA integer,
    @CREDITAR varchar(20)='N',
    @ACAO varchar(20))
as
begin

DECLARE @IDCLIENTE integer;

SET @IDCLIENTE=(select  CLIENTE FROM VENDAS  WHERE CODIGO=@NVENDA AND EMPRESA=@NEMPRESA);

   ------------------------------------------------------------------------
   -- "INSERT" SIGNIFICA QUE ...
   --- 
   ------------------------------------------------------------------------
   if (@ACAO='INSERT')
   begin

      ------------------------------------------------------------------------
      -- lançar no caixa
      ------------------------------------------------------------------------

       INSERT INTO VENDAS(
                  EMPRESA
                 ,NOTAFISCALORIGEM
                 ,MODELO
                 ,SERIE
                 ,TIPONF
                 ,EMISSAO
                 ,OPERACAO
                 ,CLIENTE
                 ,VENDEDOR
                 ,CFOP
                 ,TABELA
                 ,FORMAPAGTO
                 ,TRANSPORTADORA
                 ,DATA_ENTRADASAIDA
                 ,TIPOPAGAMENTO
                 ,QTDE_PRODUTOS
                 ,VALOR_PRODUTOS
                 ,TOTAL_NF
                 ,CUPOM
                 ,STATUS
                 )
       (SELECT
                  @NEMPRESA
                 ,NOTAFISCAL
                 ,MODELO
                 ,SERIE
                 ,TIPONF
                 ,GETDATE()
                 ,'E'
                 ,CLIENTE
                 ,VENDEDOR
                 ,CFOP
                 ,TABELA
                 ,FORMAPAGTO
                 ,TRANSPORTADORA
                 ,GETDATE()
                 ,TIPOPAGAMENTO
                 ,0
                 ,0
                 ,0
                 ,'N'
                 ,'N'
                

       FROM VENDAS  WHERE CODIGO=@NVENDA AND EMPRESA=@NEMPRESA 
       );


   end -- (@ACAO='INSERT') 



   ------------------------------------------------------------------------
   -- "DEVOLVER" SIGNIFICA QUE PRODUTOS RETORNAM AO ESTOQUE
   --- E O FINANCEIRO SERA DEVIDAMENTE INFORMADO
   ------------------------------------------------------------------------
   if (@ACAO='DEVOLVER')
   begin


       ------------------------------------------------------------------------
       --  DELETAR DO CONTAS A RECEBER
       ------------------------------------------------------------------------
       delete from FIN_CTARECEBER
       where
          FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.data=(select  top 1 EMISSAO       from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.QUITADO='N';
          

        ------------------------------------------------------------------------
        --  RETORNAR AO ESTOUE
        ------------------------------------------------------------------------
       
       EXEC SPATUALIZA_VENDA_GRADE @NEMPRESA, @NVENDA, 'DEVOLVER';
       
       ------------------------------------------------------------------------
       --  DELETAR COMISSÃO DO CONTAS A PAGAR
       ------------------------------------------------------------------------
       delete from FIN_CTAPAGAR
       where
          FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA)
       and
          FIN_CTAPAGAR.QUITADO='N';



      ------------------------------------------------------------------------
      -- FECHAR VENDA
      ------------------------------------------------------------------------
      update VENDAS set STATUS='S'
      where
         CODIGO=@NVENDA;
         
      ------------------------------------------------------------------------
      -- FECHAR VENDA
      ------------------------------------------------------------------------
      If (@CREDITAR='S') OR (@CREDITAR='SIM')
      begin
         INSERT INTO CAD_CLIENTES_CREDITOS (
                   CLIENTE,
                   DATA,
                   NOTAFISCAL,
                   FINCONTARECEBER,
                   ORIGEMCREDITO,
                   DESTINOCREDITO,
                   VALOR,
                   UTILIZADO
                   )
             VALUES
                   (
                   (select  CLIENTE FROM VENDAS  WHERE CODIGO=@NVENDA AND EMPRESA=@NEMPRESA),
                   GETDATE(),
                   (select  NOTAFISCALORIGEM FROM VENDAS  WHERE CODIGO=@NVENDA AND EMPRESA=@NEMPRESA),
                   0,
                   'REFERENTE A DEVOLUCAO DE PRODUTOS. NF ORIGEM: '+CAST((select  NOTAFISCALORIGEM FROM VENDAS  WHERE CODIGO=@NVENDA AND EMPRESA=@NEMPRESA) AS VARCHAR(15) ),
                   '',
                   (select  TOTAL_NF FROM VENDAS  WHERE CODIGO=@NVENDA AND EMPRESA=@NEMPRESA),
                   'N'
                   );
                   
            --UPDATE CAD_CLIENTES SET CREDITO_DISPONIVEL=coalesce( (SELECT SUM(VALOR) FROM CAD_CLIENTES_CREDITOS WHERE CAD_CLIENTES_CREDITOS.CLIENTE=(select  CLIENTE FROM VENDAS  WHERE CODIGO=@NVENDA AND EMPRESA=@NEMPRESA AND UTILIZADO='N' ) ),0)
            --WHERE
            --   CODIGO=(select  CLIENTE FROM VENDAS  WHERE CODIGO=@NVENDA AND EMPRESA=@NEMPRESA)
            
            -- ATUALIZAR CREDITO DISPONIVEL DO CLIENTE
            
            EXEC SPCLIENTE_ATUALIZACREDITO @NCODIGO=@IDCLIENTE ;
            


     end;
     


   end -- (@ACAO='DEVOLVER') 


end


GO
/****** Object:  StoredProcedure [dbo].[SPNFE_PROCESSAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SPNFE_PROCESSAR] (
    @NEMPRESA integer=1,
    @NVENDA integer,
    @ACAO varchar(20))
as
begin


DECLARE @NCONFERENCIA INTEGER;
DECLARE @NPEDIDO INTEGER;

SET @NPEDIDO=Coalesce( (select Coalesce(VENDAS.PEDIDO,0)             from  VENDAS where VENDAS.EMPRESA=@NEMPRESA AND VENDAS.CODIGO=@NVENDA ),0);
SET @NCONFERENCIA=Coalesce( (select Coalesce(VENDAS.CONFERENCIA,0)    from  VENDAS where VENDAS.EMPRESA=@NEMPRESA AND VENDAS.CODIGO=@NVENDA ),0);

   ------------------------------------------------------------------------
   -- "FECHAR" SIGNIFICA QUE A VENDA NÃO EFETIVADA (ABERTA) ESTÁ ENCERRADA
   ------------------------------------------------------------------------
   if (@ACAO='FECHAR')
   begin

      ------------------------------------------------------------------------
      -- lançar no caixa
      ------------------------------------------------------------------------
      if (SELECT FINANCEIRO_BALCAO_LANCARCAIXA FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA)='S'
      begin
         if (select VLR_CAIXA from VENDAS   where  CODIGO=@NVENDA)>0
         begin
            insert into ctrl_caixa (
                                EMPRESA,
                                documento,
                                dc,
                                data,
                                historico,
                                vlr_credito,
                                vlr_debito,
                                FORMA_PAGTO,
                                efetivado)
                        values (
                               @NEMPRESA,
                               'VNB-' + cast(@NVENDA as varchar(30)),
                               'CREDITO',
                               (select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA),
                               'Entrada em dinheiro  (na emissão da NF: ' + cast(@NVENDA as varchar(15)) + ')',
                               (select  top 1 VLR_CAIXA          from vendas       where  codigo=@NVENDA),
                               0,
                               (select  top 1 FORMAPAGTO        from vendas       where  codigo=@NVENDA),
                               'S'
                               );
         end
      end


      ------------------------------------------------------------------------
      -- LANÇAR NO CONTAS A RECEBER
      ------------------------------------------------------------------------
      if (select VLR_CAIXA from VENDAS   where  CODIGO=@NVENDA)>0
      begin
         insert into FIN_CTARECEBER (
                                     EMPRESA,
                                     DATA,
                                     DATA_PAGTO,
                                     VALOR,
                                     VALOR_PAGO,
                                     VALOR_SALDO,
                                     VENDEDOR,
                                     CLIENTE,
                                     NOTAFISCAL,
                                     DOCUMENTO,
                                     VENCIMENTO,
                                     FORMA_PAGTO,
                                     QUITADO )
                     values (
                                     @NEMPRESA,
                                     (select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA),
                                     (select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA),
                                     (select  top 1 vlr_caixa          from vendas       where  codigo=@NVENDA),
                                     (select  top 1 vlr_caixa          from vendas       where  codigo=@NVENDA),
                                     0,
                                     (select  top 1 vendedor           from vendas       where  codigo=@NVENDA),
                                     (select  top 1 cliente            from vendas       where  codigo=@NVENDA),
                                     (select  top 1 NOTAFISCAL          from vendas       where  codigo=@NVENDA),
                                     'VNB-' + cast(@NVENDA as varchar(30)),
                                     (select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA),
                                     (select  top 1 FORMAPAGTO        from vendas       where  codigo=@NVENDA),
                                     'S'
                                     );
      end

      ------------------------------------------------------------------------
      -- atualiza saldo restante do registro
      ------------------------------------------------------------------------
      update FIN_CTARECEBER set VALOR_SALDO=valor
      where
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1   NOTAFISCAL from vendas   where  codigo=@NVENDA)
      and
         FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas   where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      -- atualiza saldo restante do registro
      ------------------------------------------------------------------------
      update FIN_CTARECEBER set VALOR_SALDO=valor-valor_pago
      where
         FIN_CTARECEBER.valor_pago>0
      and
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
      and
         FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      -- se não foi definido vendedor, definir vendedor padrão
      ------------------------------------------------------------------------
      update FIN_CTARECEBER set vendedor=(select  VENDA_VENDEDOR from CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA) -- retornar o "vendedor padrão" definido nos parametros do sistema
      where
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
      and
         (FIN_CTARECEBER.vendedor is null) or (FIN_CTARECEBER.vendedor='0');


      ------------------------------------------------------------------------
      -- se não foi definido cliente, definir cliente padrão
      ------------------------------------------------------------------------
      update FIN_CTARECEBER set cliente=(select  VENDA_CLIENTE from CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA )   -- retornar o "cliente padrão" definido nos parametros do sistema
      where
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
      and
          (FIN_CTARECEBER.cliente is null) or (FIN_CTARECEBER.cliente='0');

      ------------------------------------------------------------------------
      -- FECHAR PEDIDO
      ------------------------------------------------------------------------
      update PEDIDOS set STATUS='S'
      where
         CODIGO=(select  top 1 PEDIDO            from vendas       where  codigo=@NVENDA)
      and
         CODIGO>0;

      ------------------------------------------------------------------------
      -- FECHAR CONFERENCIA
      ------------------------------------------------------------------------
      update PEDIDOCONFERENCIA set FATURADO='S'
      where
         CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)
      and
         CODIGO>0;

      ------------------------------------------------------------------------
      -- FECHAR VENDA
      ------------------------------------------------------------------------
      update VENDAS set STATUS='S'
      where
         CODIGO=@NVENDA;

      ------------------------------------------------------------------------
      -- CHECAR SE REGISTRO DO CONTAS A RECEBER TIVER DATA VENCIMENTO IGUAL
      -- A DATA DE EMISSÃO DEVERÁ OU NÃO SER LANÇADO NO CAIXA.
      ------------------------------------------------------------------------
      if ((SELECT FINANCEIRO_RECEBER_LANCARCAIXA FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA)='S')
          AND
         ((select  count(*) from FIN_CTARECEBER where FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas   where  codigo=@NVENDA) and FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas   where  codigo=@NVENDA))>0 )
      begin
         ------------------------------------------------------------------------
         -- SE NÃO EXISTE, ENTÃO ADICIONAR
         ------------------------------------------------------------------------
         if ( select  top 1 count(DOCUMENTO) from ctrl_caixa where DOCUMENTO='VNB-' + cast(@NVENDA as varchar(30)) and vlr_credito=(select  top 1  valor from FIN_CTARECEBER    where  NOTAFISCAL=@NVENDA and data=VENCIMENTO ) )<=0
         begin
            insert into ctrl_caixa (
                                    EMPRESA,
                                    documento,
                                    dc,
                                    data,
                                    historico,
                                    vlr_credito,
                                    vlr_debito,
                                    FORMA_PAGTO,
                                    efetivado)
                            values (
                                   @NEMPRESA,
                                   'VNB-' + cast(@NVENDA as varchar(30)),
                                   'CREDITO',
                                   (select  top 1  data                                 from FIN_CTARECEBER    where  NOTAFISCAL=@NVENDA and data=VENCIMENTO ),
                                   'Lançado pelo contas a receber (na emissão da NF: ' + cast(@NVENDA as varchar(30)) + ')',
                                   (select  top 1  valor                                from FIN_CTARECEBER    where  NOTAFISCAL=@NVENDA and data=VENCIMENTO ),
                                   0,
                                   (select  top 1  FORMA_PAGTO                               from FIN_CTARECEBER    where  NOTAFISCAL=@NVENDA and data=VENCIMENTO ),
                                   'S'
                                   );
         end

      end

      ------------------------------------------------------------------------
      -- LANÇAR COMISSÃO DO VENDEDOR/REPRESENTANTE
      -- COMO SENDO UMA DESPESA...  NO CONTAS A PAGAR
      ------------------------------------------------------------------------
      if (SELECT FINANCEIRO_PAGAR_COMISSAO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA)='NOTAFISCAL'
      begin

         ------------------------------------------------------------------------
         -- SOMENTE SE HOUVER VENDEDOR
         ------------------------------------------------------------------------
         if (select vendedor from vendas where  codigo=@NVENDA)>0
         begin
            ------------------------------------------------------------------------
            -- LANÇAR NO CONTAS A PAGAR
            ------------------------------------------------------------------------
            insert into FIN_CTAPAGAR (
                                       EMPRESA,
                                       DATA,
                                       VALOR,
                                       VALOR_SALDO,
                                       FORNECEDOR,
                                       NOTAFISCAL,
                                       DOCUMENTO,
                                       VENCIMENTO,
                                       FORMA_PAGTO,
                                       QUITADO,
                                       HISTORICO )
                               values (
                                      @NEMPRESA,
                                      (select          EMISSAO                       from vendas            where  codigo=@NVENDA),
                                      (select  top 1   COMISSAO_VENDA                from VIEW_COMISSAO     where  NOTAFISCAL=(select   NOTAFISCAL          from vendas       where  codigo=@NVENDA)  ),
                                      0,
                                      (select          vendedor                      from vendas            where  codigo=@NVENDA),
                                      (select          NOTAFISCAL                    from vendas            where  codigo=@NVENDA) ,
                                      'NF-' +          cast((select   NOTAFISCAL     from vendas            where  codigo=@NVENDA) as varchar(30)),
                                      (select         (EMISSAO+30)                   from vendas            where  codigo=@NVENDA),
                                      (select          FORMAPAGTO                    from vendas            where  codigo=@NVENDA),
                                      'N',
                                      'COMISSAO A PAGAR PROVENIENTE DA NOTA FISCAL: '+CAST((select   NOTAFISCAL          from vendas       where  codigo=@NVENDA) AS VARCHAR(30))
                                      );


            ------------------------------------------------------------------------
            -- LANÇAR NA TABELA FIN_COMISSOES DE COMISSÕES
            ------------------------------------------------------------------------
          

            insert into FIN_COMISSOES (
                                       EMPRESA,
                                       DATA,
                                       VENCIMENTO,
                                       CLIENTE,
                                       VENDEDOR,
                                       NOTAFISCAL,
                                       CONFERENCIA,
                                       PEDIDO,
                                       PEDIDOPARALELO,
                                       DOCUMENTO,
                                       FORMA_PAGTO,
                                       CONTACORRENTE,
                                       CONTACAIXA,
                                       DEPARTAMENTO,
                                       PLANO_CONTAS,
                                       ORIGEM,
                                       NATUREZA,
                                       DC,
                                       VALOR_VENDA,
                                       COMISSAO,
                                       VALOR,
                                       QUITADO,
                                       SELECIONADO,
                                       HISTORICO
                                       )
                               values (
                                      @NEMPRESA,
                                      COALESCE((SELECT         EMISSAO                        FROM VENDAS            WHERE  CODIGO=@NVENDA),GETDATE()),
                                      COALESCE((select         (EMISSAO+30)                   from vendas            where  codigo=@NVENDA),GETDATE()+30),
                                      (select                  CLIENTE                        from vendas            where  codigo=@NVENDA),
                                      (select                  vendedor                       from vendas            where  codigo=@NVENDA),
                                      (select                  NOTAFISCAL                     from vendas            where  codigo=@NVENDA) ,
                                      (select                  CONFERENCIA                    from vendas            where  codigo=@NVENDA),
                                      (select                  PEDIDO                         from vendas            where  codigo=@NVENDA),
                                      (select                  DOCUMENTO                      from PEDIDOS           where  CODIGO=(select PEDIDO from vendas where  codigo=@NVENDA)  ),
                                      'NF-' +                  cast((select   NOTAFISCAL      from vendas            where  codigo=@NVENDA) as varchar(30)),
                                      (select                  FORMAPAGTO                     from vendas            where  codigo=@NVENDA),
                                      (select                  CONTACORRENTE                  from CAD_CLIENTES      where  CODIGO=(select VENDEDOR from vendas where  codigo=@NVENDA)  ),
                                      (SELECT FINANCEIRO_PAGAR_COMISSAOCONTACAIXA             FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA), 
                                      (SELECT FINANCEIRO_PAGAR_COMISSAOCENTROCUSTO            FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA), 
                                      (SELECT FINANCEIRO_PAGAR_COMISSAOPLANOCONTA             FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA), 
                                      'NF-E',
                                      'VENDA',
                                      'CREDITO',
                                      (select                  VALOR_PRODUTOS                 from vendas            where  codigo=@NVENDA),
                                      (select                  COMISSAO                       from CAD_CLIENTES      where  CODIGO=(select VENDEDOR from vendas where  codigo=@NVENDA)  ),
                                      -- calculo pra informar valor da comissao(VALOR DOS PRODUTOS * COMISSAO / 100)
                                      (  COALESCE((select VALOR_PRODUTOS from vendas where codigo=@NVENDA),0) 
                                         * 
                                         COALESCE((select COMISSAO from CAD_CLIENTES where CODIGO=(select VENDEDOR from vendas where  codigo=@NVENDA)  ),0) 
                                         / 100),
                                      'N',
                                      'N',
                                      'COMISSÃO PROVENIENTE DA NF-E: '+cast((select   NOTAFISCAL      from vendas            where  codigo=@NVENDA) as varchar(30))

                                      );
                                      


         end

      end

      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('N','NAO')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE -
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOCONFERENCIA_ITENS
                                                                              WHERE
                                                                                 PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End; --IF  EXISTS()


   end -- If (@ACAO='FECHAR')   ;



   ------------------------------------------------------------------------
   -- "ABRIR" SIGNIFICA QUE A VENDA EFETIVADA (FECHADA) ESTÁ SENDO
   --- DESFEITA E QUE TODOS OS VINCULOS DEVE SER EXCLUIDOS
   ------------------------------------------------------------------------
   if (@ACAO='ABRIR')
   begin

      ------------------------------------------------------------------------
      --  DELETAR LANÇAMENTO NO CAIXA (caso exista)
      ------------------------------------------------------------------------
      delete from ctrl_caixa
      where
         ctrl_caixa.documento='VNB-' + cast(@NVENDA as varchar(30))
      and
         ctrl_caixa.data=(select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      --  DELETAR DO CONTAS A RECEBER
      ------------------------------------------------------------------------
      delete from FIN_CTARECEBER
      where
         FIN_CTARECEBER.NOTAFISCAL=(select   NOTAFISCAL    from vendas       where  codigo=@NVENDA)
      and
         FIN_CTARECEBER.cliente=(select      cliente       from vendas       where  codigo=@NVENDA)
      and
         FIN_CTARECEBER.data=(select         EMISSAO       from vendas       where  codigo=@NVENDA);

      ------------------------------------------------------------------------
      --  RETORNAR AO ESTOUE
      ------------------------------------------------------------------------
      /*
      update CAD_PRODUTOS set ESTOQUESALDO=ESTOQUESALDO + (
                            select  top 1 QUANTIDADE from VENDAS_ITENS
                            where
                               CODIGO=@NVENDA
                            and
                               PRODUTO=CAD_PRODUTOS.REFERENCIA
                            )
      where
         CAD_PRODUTOS.REFERENCIA=(select  top 1 PRODUTO from VENDAS_ITENS where  CODIGO=@NVENDA and PRODUTO=CAD_PRODUTOS.REFERENCIA);
      */

      ------------------------------------------------------------------------
      --  REABRIR PEDIDO
      ------------------------------------------------------------------------
      update PEDIDOS set STATUS='N'
      where
         CODIGO=(select  top 1 PEDIDO from vendas       where  codigo=@NVENDA)   and   CODIGO>0;

      ------------------------------------------------------------------------
      --  REABRIR CONFERENCIA
      ------------------------------------------------------------------------
      update PEDIDOCONFERENCIA set FATURADO='N'
      where
         CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)  and  CODIGO>0;


      ------------------------------------------------------------------------
      --  DELETAR COMISSÃO DO CONTAS A PAGAR
      ------------------------------------------------------------------------
      delete from FIN_CTAPAGAR
      where
         FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
      and
         FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA);

      ------------------------------------------------------------------------
      --  DELETAR COMISSÃO DO CONTAS A PAGAR
      ------------------------------------------------------------------------
      delete from FIN_COMISSOES
      where
         FIN_COMISSOES.EMPRESA=@NEMPRESA
      and
         FIN_COMISSOES.NOTAFISCAL=(select  top 1 NOTAFISCAL  from vendas       where  codigo=@NVENDA)
      and
         FIN_COMISSOES.VENDEDOR=(select    top 1 VENDEDOR    from vendas       where  codigo=@NVENDA)
      and
         FIN_COMISSOES.CLIENTE=(select     top 1 CLIENTE     from vendas       where  codigo=@NVENDA);
         

      ------------------------------------------------------------------------
      --  REABRIR VENDA
      ------------------------------------------------------------------------
      update VENDAS set STATUS='N',
                        VLR_RECEBIDO=0,
                        VLR_CAIXA=0
      where
         CODIGO=@NVENDA;


      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('N','NAO')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOCONFERENCIA_ITENS
                                                                              WHERE
                                                                                 PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End; --IF  EXISTS()

   end -- if (@ACAO='ABRIR')    ;


   ------------------------------------------------------------------------
   --  "CANCELAR" SIGNIFICA QUE A VENDA EFETIVADA (FECHADA)
   --  ESTÁ SENDO DESFEITA
   ------------------------------------------------------------------------
   if (@ACAO IN ('C','CANCELAR'))
   begin
        ------------------------------------------------------------------------
        --  DELETAR LANÇAMENTO NO CAIXA (caso exista)
        ------------------------------------------------------------------------
       delete from ctrl_caixa
       where
          ctrl_caixa.documento='VNB-' + cast(@NVENDA as varchar(30))
       and
          ctrl_caixa.data=(select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA);


       ------------------------------------------------------------------------
       --  DELETAR DO CONTAS A RECEBER
       ------------------------------------------------------------------------
       delete from FIN_CTARECEBER
       where
          FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.data=(select  top 1 EMISSAO       from vendas       where  codigo=@NVENDA);

        ------------------------------------------------------------------------
        --  RETORNAR AO ESTOUE
        ------------------------------------------------------------------------
       /*
       update CAD_PRODUTOS set ESTOQUESALDO=ESTOQUESALDO + (
                             select  top 1 QUANTIDADE from VENDAS_ITENS
                             where
                                CODIGO=@NVENDA
                             and
                                PRODUTO=CAD_PRODUTOS.REFERENCIA
                             )
       where
          CAD_PRODUTOS.REFERENCIA=(select  top 1 PRODUTO from VENDAS_ITENS where  CODIGO=@NVENDA and PRODUTO=CAD_PRODUTOS.REFERENCIA);
       */

       ------------------------------------------------------------------------
       --  REABRIR PEDIDO
       ------------------------------------------------------------------------
       update PEDIDOS set STATUS='N'
       where
          CODIGO=(select  top 1 PEDIDO from vendas       where  codigo=@NVENDA)   and   CODIGO>0;

       ------------------------------------------------------------------------
       -- REABRIR CONFERENCIA
       ------------------------------------------------------------------------
       update PEDIDOCONFERENCIA set FATURADO='N'
       where
          CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)  and    CODIGO>0;

       ------------------------------------------------------------------------
       --  DELETAR COMISSÃO DO CONTAS A PAGAR
       ------------------------------------------------------------------------
       delete from FIN_CTAPAGAR
       where
          FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      --  DELETAR COMISSÃO DO CONTAS A PAGAR
      ------------------------------------------------------------------------
      delete from FIN_COMISSOES
      where
         FIN_COMISSOES.EMPRESA=@NEMPRESA
      and
         FIN_COMISSOES.NOTAFISCAL=(select  top 1 NOTAFISCAL  from vendas       where  codigo=@NVENDA)
      and
         FIN_COMISSOES.VENDEDOR=(select    top 1 VENDEDOR    from vendas       where  codigo=@NVENDA)
      and
         FIN_COMISSOES.CLIENTE=(select     top 1 CLIENTE     from vendas       where  codigo=@NVENDA);

       ------------------------------------------------------------------------
       -- INFORMAR "C=CANCELADO" NA VENDA
       ------------------------------------------------------------------------
       update VENDAS set STATUS='C',
                         VLR_RECEBIDO=0,
                         VLR_CAIXA=0
      where
          CODIGO=@NVENDA;


      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('N','NAO')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOCONFERENCIA_ITENS
                                                                              WHERE
                                                                                 PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End; --IF  EXISTS()


   end -- if (@ACAO IN ('C','CANCELAR'))

   ------------------------------------------------------------------------
   --  "CANCELAR" TUDO SIGNIFICA QUE A VENDA EFETIVADA (FECHADA)
   --  ESTÁ SENDO DESFEITA / CANCELA PEDIDO E CONFERENCIA
   ------------------------------------------------------------------------
   if (@ACAO IN ('CT','CANCELARTUDO'))
   begin
        ------------------------------------------------------------------------
        --  DELETAR LANÇAMENTO NO CAIXA (caso exista)
        ------------------------------------------------------------------------
       delete from ctrl_caixa
       where
          ctrl_caixa.documento='VNB-' + cast(@NVENDA as varchar(30))
       and
          ctrl_caixa.data=(select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA);


       ------------------------------------------------------------------------
       --  DELETAR DO CONTAS A RECEBER
       ------------------------------------------------------------------------
       delete from FIN_CTARECEBER
       where
          FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA)
       and
          FIN_CTARECEBER.data=(select  top 1 EMISSAO       from vendas       where  codigo=@NVENDA);

        ------------------------------------------------------------------------
        --  RETORNAR AO ESTOUE
        ------------------------------------------------------------------------
       /*
       update CAD_PRODUTOS set ESTOQUESALDO=ESTOQUESALDO + (
                             select  top 1 QUANTIDADE from VENDAS_ITENS
                             where
                                CODIGO=@NVENDA
                             and
                                PRODUTO=CAD_PRODUTOS.REFERENCIA
                             )
       where
          CAD_PRODUTOS.REFERENCIA=(select  top 1 PRODUTO from VENDAS_ITENS where  CODIGO=@NVENDA and PRODUTO=CAD_PRODUTOS.REFERENCIA);
       */

       ------------------------------------------------------------------------
       --  REABRIR PEDIDO
       ------------------------------------------------------------------------
       update PEDIDOS set STATUS='C'
       where
          CODIGO=(select  top 1 PEDIDO from vendas       where  codigo=@NVENDA)   and   CODIGO>0;

       ------------------------------------------------------------------------
       -- REABRIR CONFERENCIA
       ------------------------------------------------------------------------
       update PEDIDOCONFERENCIA set FATURADO='C'
       where
          CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)  and    CODIGO>0;

       ------------------------------------------------------------------------
       --  DELETAR COMISSÃO DO CONTAS A PAGAR
       ------------------------------------------------------------------------
       delete from FIN_CTAPAGAR
       where
          FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
       and
          FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA);

      ------------------------------------------------------------------------
      --  DELETAR COMISSÃO DO CONTAS A PAGAR
      ------------------------------------------------------------------------
      delete from FIN_COMISSOES
      where
         FIN_COMISSOES.EMPRESA=@NEMPRESA
      and
         FIN_COMISSOES.NOTAFISCAL=(select  top 1 NOTAFISCAL  from vendas       where  codigo=@NVENDA)
      and
         FIN_COMISSOES.VENDEDOR=(select    top 1 VENDEDOR    from vendas       where  codigo=@NVENDA)
      and
         FIN_COMISSOES.CLIENTE=(select     top 1 CLIENTE     from vendas       where  codigo=@NVENDA);


       ------------------------------------------------------------------------
       -- INFORMAR "C=CANCELADO" NA VENDA
       ------------------------------------------------------------------------
       update VENDAS set STATUS='C',
                         VLR_RECEBIDO=0,
                         VLR_CAIXA=0
      where
          CODIGO=@NVENDA;


      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('N','NAO')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOCONFERENCIA_ITENS
                                                                              WHERE
                                                                                 PEDIDOCONFERENCIA_ITENS.CODIGO=@NCONFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End; --IF  EXISTS()


   end -- if (@ACAO IN ('CT','CANCELARTUDO'))


   ------------------------------------------------------------------------
   -- EXCLUIR VENDA
   ------------------------------------------------------------------------
   if (@ACAO='EXCLUIR')
   begin

       ------------------------------------------------------------------------
       -- DELETAR LANÇAMENTO NO CAIXA (caso exista)
       ------------------------------------------------------------------------
      delete from ctrl_caixa
      where
         ctrl_caixa.documento='VNB-' + cast(@NVENDA as varchar(30))
         and
         ctrl_caixa.data=(select  top 1 EMISSAO            from vendas       where  codigo=@NVENDA);

      ------------------------------------------------------------------------
      -- DELETAR DO CONTAS A RECEBER
      ------------------------------------------------------------------------
      delete from FIN_CTARECEBER
      where
         FIN_CTARECEBER.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
         and
         FIN_CTARECEBER.cliente=(select  top 1 cliente    from vendas       where  codigo=@NVENDA)
         and
         FIN_CTARECEBER.data=(select  top 1 EMISSAO       from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      --  RETORNAR AO ESTOUE
      ------------------------------------------------------------------------
      /*
      update CAD_PRODUTOS set ESTOQUESALDO=ESTOQUESALDO + (
                            select  top 1 QUANTIDADE from VENDAS_ITENS
                            where
                               CODIGO=@NVENDA
                            and
                               PRODUTO=CAD_PRODUTOS.REFERENCIA
                            )
      where
         CAD_PRODUTOS.REFERENCIA=(select  top 1 PRODUTO from VENDAS_ITENS where  CODIGO=@NVENDA and PRODUTO=CAD_PRODUTOS.REFERENCIA);
      */


      ------------------------------------------------------------------------
      --  REABRIR PEDIDO
      ------------------------------------------------------------------------
      update PEDIDOS set STATUS='N'
      where
         CODIGO=(select  top 1 PEDIDO from vendas       where  codigo=@NVENDA)
      and
         CODIGO>0;


      ------------------------------------------------------------------------
       -- REABRIR CONFERENCIA
      ------------------------------------------------------------------------
      update PEDIDOCONFERENCIA set FATURADO='N'
      where
         CODIGO=(select  top 1 CONFERENCIA            from vendas       where  codigo=@NVENDA)
      and
         CODIGO>0;

      ------------------------------------------------------------------------
      --  DELETAR COMISSÃO DO CONTAS A PAGAR
      ------------------------------------------------------------------------
      delete from FIN_CTAPAGAR
      where
         FIN_CTAPAGAR.NOTAFISCAL=(select  top 1 NOTAFISCAL from vendas       where  codigo=@NVENDA)
         and
         FIN_CTAPAGAR.FORNECEDOR=(select  top 1 VENDEDOR    from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      --  DELETAR COMISSÃO DO CONTAS A PAGAR
      ------------------------------------------------------------------------
      delete from FIN_COMISSOES
      where
         FIN_COMISSOES.EMPRESA=@NEMPRESA
      and
         FIN_COMISSOES.NOTAFISCAL=(select  top 1 NOTAFISCAL  from vendas       where  codigo=@NVENDA)
      and
         FIN_COMISSOES.VENDEDOR=(select    top 1 VENDEDOR    from vendas       where  codigo=@NVENDA)
      and
         FIN_COMISSOES.CLIENTE=(select     top 1 CLIENTE     from vendas       where  codigo=@NVENDA);


      ------------------------------------------------------------------------
      -- REABRIR VENDA
      ------------------------------------------------------------------------
      delete from  VENDAS
      where
         CODIGO=@NVENDA;


   end -- if (@ACAO='EXCLUIR')    ;


   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS SET 
      ESTOQUESALDO=COALESCE( (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE   CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA AND COR_ID>0 AND TAMANHO_ID>0 ),0)
   WHERE
      CAD_PRODUTOS.EMPRESA=@NEMPRESA
   AND
      CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA



end;


GO
/****** Object:  StoredProcedure [dbo].[SPOP_APROVAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPOP_APROVAR]  (
    @NEMPRESA    INTEGER,
    @NORDEMPRODUCAO INTEGER,
    @ACAO VARCHAR(10)
    )
as
begin

   if @ACAO='APROVAR'
   Begin
       UPDATE PCP_ORDEMPRODUCAO  set APROVADO='S'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO
   end;
   

   if @ACAO='DESAPROVAR'
   Begin

       ------------------------------------------------------------------------
       -- FECHAR -
       ------------------------------------------------------------------------
       UPDATE PCP_ORDEMPRODUCAO SET
          DATAFECHAMENTO=NULL
          ,ENCERRADO='N'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO

       ------------------------------------------------------------------------
       -- ZERAR SOMATORIOS -
       ------------------------------------------------------------------------
       UPDATE PCP_ORDEMPRODUCAO SET
          QTDE_PRODUZIDA=0
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO


       UPDATE PCP_ORDEMPRODUCAO SET
          QTDE_RESTANTE=COALESCE( QTDE_TOTAL,0) - COALESCE( QTDE_PRODUZIDA,0)
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO


       UPDATE PCP_ORDEMPRODUCAO SET
          PERCENTUAL=0
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO

       UPDATE PCP_ORDEMPRODUCAO  set APROVADO='N'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO




       ------------------------------------------------------------------------
       -- DELETAR MATERIA PRIMA
       ------------------------------------------------------------------------
       DELETE FROM PCP_ORDEMPRODUCAO_MP
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO;
      
      
       DELETE FROM PCP_ORDEMPRODUCAO_MPTECIDOS
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO;
      

       -- DELETAR
       ------------------------------------------------------------------------
       DELETE FROM PCP_ORDEMPRODUCAO_DEFEITOS
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO;

       DELETE FROM PCP_ORDEMPRODUCAO_PERDAS
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO;
          
          
       DELETE FROM PCP_ORDEMPRODUCAO_LOCALIZACAO
       WHERE
          EMPRESA=@NEMPRESA
       AND   
          ORDEMPRODUCAO=@NORDEMPRODUCAO;

   End;

   ------------------------------------------------------------------------
   -- ATUALIZAR TABELA MOVIMENTAÇÃO DE OPM (PCP_ORDEMPRODUCAO_MOVIMENTO)
   ------------------------------------------------------------------------
   Merge
      PCP_ORDEMPRODUCAO_MOVIMENTO as Destino
   Using
      ( Select *  From PCP_ORDEMPRODUCAO_ITENS_GRADE
        WHERE EMPRESA=@NEMPRESA AND CODIGO=@NORDEMPRODUCAO AND APROVADO='S' AND COR_ID>0   AND TAMANHO_ID>0  ) as Origem
   On
      (Destino.EMPRESA = Origem.EMPRESA
       AND
       Destino.CODIGO = Origem.CODIGO
       AND
       Destino.REFERENCIA = Origem.REFERENCIA
       AND
       Destino.COR_ID = Origem.COR_ID
       AND
       Destino.TAMANHO_ID = Origem.TAMANHO_ID
        )
         

   When Not Matched By Target Then
            Insert (
                     EMPRESA
                    ,CODIGO
                    ,APROVADO
                    ,DATA
                    ,REFERENCIA
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,QTDE_TOTAL
                    ,QTDE_PRODUZIDA
                    ,QTDE_RESTANTE
                    ,PERCENTUAL
                    ,FASEATUAL
                    ,CELULAATUAL
                    ,MAQUINAATUAL
                    ,OPERADORATUAL
                    ,PROCESSOATUAL
                    ,TURNOATUAL
                    ,DEFEITOATUAL
                    ,QUALIDADEATUAL

                  )
            Values (
                     EMPRESA
                    ,CODIGO
                    ,APROVADO
                    ,DATA
                    ,REFERENCIA
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,QUANTIDADE
                    ,0
                    ,QUANTIDADE
                    ,0
                    ,0 --(select )
                    ,0
                    ,0
                    ,0
                    ,0
                    ,0
                    ,0
                    ,0

            )


   When Matched Then
      Update  set
         Destino.QTDE_TOTAL=Destino.QTDE_TOTAL+Origem.QUANTIDADE,
         Destino.QTDE_RESTANTE=(Destino.QTDE_TOTAL-Destino.QTDE_RESTANTE),
         Destino.PERCENTUAL=0


   When Not Matched By Source AND (Destino.APROVADO='N') AND (Destino.CODIGO=@NORDEMPRODUCAO) Then
      Delete
      
   Output $action, inserted.*,    deleted.*;

   ------------------------------------------------------------------------
   -- NÃO PERMITIR VALORES NULOS
   ------------------------------------------------------------------------

   UPDATE PCP_ORDEMPRODUCAO_MOVIMENTO set QTDE_TOTAL=0
   WHERE
      (QTDE_TOTAL is null) OR (QTDE_TOTAL < 1);

   UPDATE PCP_ORDEMPRODUCAO_MOVIMENTO set QTDE_PRODUZIDA=0
   WHERE
      (QTDE_PRODUZIDA is null) OR (QTDE_PRODUZIDA < 1);

   UPDATE PCP_ORDEMPRODUCAO_MOVIMENTO set QTDE_RESTANTE=0
   WHERE
      (QTDE_RESTANTE is null) OR (QTDE_RESTANTE < 1);

   UPDATE PCP_ORDEMPRODUCAO_MOVIMENTO set PERCENTUAL=0
   WHERE
      (PERCENTUAL is null) OR (PERCENTUAL < 1);

  
  
   ------------------------------------------------------------------------
   -- ATUALIZAR CAMPOS
   ------------------------------------------------------------------------
   UPDATE PCP_ORDEMPRODUCAO_MOVIMENTO set
      EMPRESA      =  ( select PCP_ORDEMPRODUCAO.EMPRESA     from  PCP_ORDEMPRODUCAO where  PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO ),
      DATA         =  ( select PCP_ORDEMPRODUCAO.DATA        from  PCP_ORDEMPRODUCAO where  PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO )

   WHERE
      PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=@NEMPRESA
   AND
      PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO;


   ------------------------------------------------------------------------
   -- ATUALIZAR TABELA MOVIMENTAÇÃO DE PRODUTOS (MOVIMENTOS_PRODUTOS)
   ------------------------------------------------------------------------
 
   Merge
      MOVIMENTOS_PRODUTOS as Destino
   Using
      ( Select *  From PCP_ORDEMPRODUCAO_MOVIMENTO
        WHERE EMPRESA=@NEMPRESA  AND COR_ID>0   AND TAMANHO_ID>0 ) as Origem
   On
      (Destino.EMPRESA = Origem.EMPRESA
       AND
       Destino.REFERENCIA = Origem.REFERENCIA
       AND
       Destino.COR_ID = Origem.COR_ID
       AND
       Destino.TAMANHO_ID = Origem.TAMANHO_ID )

   When Not Matched By Target Then
            Insert (
                     EMPRESA
                    ,APROVADO
                    ,DATAMOVIMENTO
                    ,REFERENCIA
                    ,FASEATUAL
                    ,CELULAATUAL
                    ,MAQUINAATUAL
                    ,OPERADORATUAL
                    ,PROCESSOATUAL
                    ,TURNOATUAL
                    ,DEFEITOATUAL
                    ,QUALIDADEATUAL
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,QTDE_VENDIDO
                    ,QTDE_DEMANDA
                    ,QTDE_PRODUZIR
                    ,QTDE_PRODUZIDO
                    ,QTDE_PRODUZINDO
                    ,QTDE_FISICO
                    ,QTDE_ESTOQUE
                    ,QTDE_PERDAS
                    ,QTDE_DEFEITOS                    
                    )
            Values ( 
                     EMPRESA
                    ,APROVADO
                    ,GETDATE()
                    ,REFERENCIA
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,0
                    ,0  
                    ,QTDE_TOTAL  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  

            )


   When Matched Then
      Update  set
         Destino.APROVADO=Origem.APROVADO,
         Destino.QTDE_PRODUZIR=Destino.QTDE_PRODUZIR+Origem.QTDE_TOTAL

   When Not Matched By Source and (Destino.QTDE_VENDIDO<1)   Then
      Delete
      
   Output $action, inserted.*,    deleted.*;
   

   ------------------------------------------------------------------------
   -- ATUALIZAR FASE 
   ------------------------------------------------------------------------

   UPDATE PCP_ORDEMPRODUCAO_MOVIMENTO 
   SET FASEATUAL=(SELECT TOP 1 FASE  FROM  CAD_FASESGRADE_LISTA WHERE FASE=(SELECT FASE FROM CAD_PRODUTOS WHERE EMPRESA=PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA AND REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA)  
                  ORDER BY ORDEM
                  )
   WHERE
      EMPRESA=@NEMPRESA
   AND
      CODIGO=@NORDEMPRODUCAO;
      


   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA  NA TABELA CAD_PRODUTOS_GRADES-
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR='***'
   WHERE
   GRADE_ID IS NULL

   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADES.COR_ID,
                                        CAD_PRODUTOS_GRADES.TAMANHO_ID
                                        )                                       
   WHERE
      COR_ID>0
   AND
      TAMANHO_ID>0;

   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA NA TABELA CAD_PRODUTOS_GRADESQUALIDADES
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADESQUALIDADES SET
   IDENTIFICADOR='***'
   WHERE
   GRADE_ID IS NULL;

   UPDATE  CAD_PRODUTOS_GRADESQUALIDADES SET
       IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA,
                                            CAD_PRODUTOS_GRADESQUALIDADES.COR_ID,
                                            CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID
                                           )                                        
   WHERE
      COR_ID>0
   AND
      TAMANHO_ID>0

      

End


GO
/****** Object:  StoredProcedure [dbo].[SPOP_BAIXARESTOQUE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPOP_BAIXARESTOQUE] (
   @NORDEMPRODUCAO ICODIGO,
   @ACAO SCODIGO
)

as
BEGIN

    IF @ACAO='DEVOLVER'    
    BEGIN

   -- ***************************************************************
   -- ***   ATUALIZA GRADE DE PRODUTOS MP (DIMINUIR)     ******
   -- ***************************************************************
   UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                    coalesce(( SELECT SUM(QUANTIDADE) /2 AS QUANTIDADE FROM PCP_ORDEMPRODUCAO_MPGRADE
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIAID=CAD_PRODUTOS_GRADES.CODIGO
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIA=coalesce(CAD_PRODUTOS_GRADES.REFERENCIA,'')
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPGRADE.COR_ID=coalesce(CAD_PRODUTOS_GRADES.COR_ID,0)
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPGRADE.TAMANHO_ID=coalesce(CAD_PRODUTOS_GRADES.TAMANHO_ID,0)
                                                                          
                                                                     ),0)
   WHERE
     CAD_PRODUTOS_GRADES.CODIGO=CAD_PRODUTOS_GRADES.CODIGO
   AND
      CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
   AND
      CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
   AND
      CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;



   -- ***************************************************************
   -- ***   ATUALIZA GRADE DE PRODUTOS TECIDOS (DIMINUIR)     ******
   -- ***************************************************************
   UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                    coalesce(( SELECT SUM(QUANTIDADE) / 2 AS QUANTIDADE FROM PCP_ORDEMPRODUCAO_MPTECIDOSGRADE
                                                                     WHERE
                                                                        --PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIAID=CAD_PRODUTOS_GRADES.CODIGO
                                                                     --AND
                                                                        PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID
                                                                          
                                                                     ),0)
   WHERE
   --  CAD_PRODUTOS_GRADES.CODIGO=CAD_PRODUTOS_GRADES.CODIGO
   --AND
      CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
   AND
      CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
   AND
      CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;




        
        UPDATE CAD_PRODUTOS    SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO + 
                                                                          coalesce(( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QTDE_CONSUMOSTOTAL FROM PCP_ORDEMPRODUCAO_MP
                                                                          WHERE
                                                                            PCP_ORDEMPRODUCAO_MP.CODIGO=@NORDEMPRODUCAO
                                                                          AND
                                                                             PCP_ORDEMPRODUCAO_MP.REFERENCIA=CAD_PRODUTOS.REFERENCIA)
                                                                          
                                                                          ,0)
        WHERE
        CAD_PRODUTOS.CODIGO=CAD_PRODUTOS.CODIGO
        AND
        CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA;



        UPDATE CAD_PRODUTOS    SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO + 
                                                                          coalesce(( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QTDE_CONSUMOSTOTAL FROM PCP_ORDEMPRODUCAO_MPTECIDOS
                                                                          WHERE
                                                                            PCP_ORDEMPRODUCAO_MPTECIDOS.CODIGO=@NORDEMPRODUCAO
                                                                          AND
                                                                             PCP_ORDEMPRODUCAO_MPTECIDOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA)
                                                                          
                                                                          ,0)
        WHERE
        CAD_PRODUTOS.CODIGO=CAD_PRODUTOS.CODIGO
        AND
        CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA;



    END;  --IF @ACAO='DEVOLVER'    
     



    IF @ACAO='BAIXAR'    
    BEGIN
         
        UPDATE CAD_PRODUTOS    SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO - 
                                                                          coalesce(( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QTDE_CONSUMOSTOTAL FROM PCP_ORDEMPRODUCAO_MP
                                                                          WHERE
                                                                            PCP_ORDEMPRODUCAO_MP.CODIGO=@NORDEMPRODUCAO
                                                                          AND
                                                                             PCP_ORDEMPRODUCAO_MP.REFERENCIA=CAD_PRODUTOS.REFERENCIA)
                                                                          
                                                                          ,0)
        WHERE
        CAD_PRODUTOS.CODIGO=CAD_PRODUTOS.CODIGO
         AND
        CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA;
        



        UPDATE CAD_PRODUTOS    SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO - 
                                                                          coalesce(( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QTDE_CONSUMOSTOTAL FROM PCP_ORDEMPRODUCAO_MPTECIDOS
                                                                          WHERE
                                                                            PCP_ORDEMPRODUCAO_MPTECIDOS.CODIGO=@NORDEMPRODUCAO
                                                                          AND
                                                                             PCP_ORDEMPRODUCAO_MPTECIDOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA)
                                                                          
                                                                          ,0)
        WHERE
        CAD_PRODUTOS.CODIGO=CAD_PRODUTOS.CODIGO
        AND
           CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA;


        
   -- ***************************************************************
   -- ***   ATUALIZA GRADE DE PRODUTOS MP (DIMINUIR)     ******
   -- ***************************************************************
   UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE -
                                                                    coalesce(( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM PCP_ORDEMPRODUCAO_MPGRADE
                                                                     WHERE
                                                                      --  PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIAID=CAD_PRODUTOS_GRADES.CODIGO
                                                                     --AND
                                                                        PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIA=coalesce(CAD_PRODUTOS_GRADES.REFERENCIA,'')
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPGRADE.COR_ID=coalesce(CAD_PRODUTOS_GRADES.COR_ID,0)
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPGRADE.TAMANHO_ID=coalesce(CAD_PRODUTOS_GRADES.TAMANHO_ID,0)
                                                                          
                                                                     ),0)
   WHERE
   --  CAD_PRODUTOS_GRADES.CODIGO=CAD_PRODUTOS_GRADES.CODIGO
   --AND
      CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
   AND
      CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
   AND
      CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;


   -- ***************************************************************
   -- ***   ATUALIZA GRADE DE PRODUTOS TECIDOS (DIMINUIR)     ******
   -- ***************************************************************
   UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE -
                                                                    coalesce(( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM PCP_ORDEMPRODUCAO_MPTECIDOSGRADE
                                                                     WHERE
                                                                        --PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIAID=CAD_PRODUTOS_GRADES.CODIGO
                                                                     --AND
                                                                        PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID
                                                                          
                                                                     ),0)
   WHERE
   --  CAD_PRODUTOS_GRADES.CODIGO=CAD_PRODUTOS_GRADES.CODIGO
   --AND
      CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
   AND
      CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
   AND
      CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;



    END;  --IF @ACAO='BAIXAR'    
     
     
     

     
     
END


GO
/****** Object:  StoredProcedure [dbo].[SPOP_CAD_PRODUTOSGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure   [dbo].[SPOP_CAD_PRODUTOSGRADE]  (
    @SREFERENCIA varchar(30),
    @ORIGEM         varchar(30),
    @NORDEMPRODUCAO integer,
    @NPEDIDO        integer
    
    )
as
BEGIN
  
  DECLARE @REFERECIA   VARCHAR(30) ;
  DECLARE @COR         VARCHAR(30) ;
  DECLARE @TAMANHO     VARCHAR(30) ;
  DECLARE @ORDEM_GRADE VARCHAR(30) ;
  DECLARE @QUANTIDADE  FLOAT ;


  
   -- se houver ordem de producao
   if (@NORDEMPRODUCAO>0) and (@ORIGEM='OP')
   begin
      -- Antes de atualizar, deletar e e inserir;
     DELETE FROM CAD_PRODUTOS_GRADES 
     WHERE CAD_PRODUTOS_GRADES.CODIGO=(SELECT CAD_PRODUTOS.CODIGO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=@REFERECIA)

     DELETE FROM CAD_PRODUTOS_GRADES 
     WHERE CAD_PRODUTOS_GRADES.REFERENCIA=@SREFERENCIA


      -- configurar para o Loop (while)
      DECLARE Cursor_SPOP_CAD_PRODUTOSGRADE CURSOR FAST_FORWARD FOR

      SELECT distinct TAMANHO, REFERENCIA, COR, ORDEM_GRADE, SUM(QTDE_ESTOQUE) FROM CAD_PRODUTOS_MOVIMENTACAO
      WHERE
         REFERENCIA=@SREFERENCIA
      AND
         TAMANHO>'' AND ORDEM_GRADE>''
      AND
         OP_LOTE=@NORDEMPRODUCAO   


     GROUP BY REFERENCIA, COR, TAMANHO, ORDEM_GRADE
     ORDER BY REFERENCIA, COR, ORDEM_GRADE

     OPEN Cursor_SPOP_CAD_PRODUTOSGRADE

     FETCH NEXT FROM Cursor_SPOP_CAD_PRODUTOSGRADE
     INTO
          @TAMANHO,
          @REFERECIA,
          @COR,
          @ORDEM_GRADE,
          @QUANTIDADE


      -- Loop
      WHILE @@FETCH_STATUS = 0
      BEGIN


         INSERT INTO CAD_PRODUTOS_GRADES(
                     CODIGO
                    ,REFERENCIA
                    ,COR
                    ,TAMANHO
                  ,ORDEM_GRADE
                    ,QUANTIDADE
                    )
              VALUES
                    (
                     (SELECT CAD_PRODUTOS.CODIGO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=@REFERECIA),
                     @REFERECIA,
                     @COR,
                     @TAMANHO,
                     @ORDEM_GRADE,
                     @QUANTIDADE
                    )

        -- ***************************************************************
        -- ***             CONTROLE DE ESTOQUE                      ******
        -- ***************************************************************

        -- QUANTIDADE EM ESTOQUE POR PRODUÇÃO
        UPDATE CAD_PRODUTOS
        set ESTOQUESALDO=  ( select sum(QUANTIDADE) from  CAD_PRODUTOS_GRADES
                            where
                            CODIGO=(SELECT CAD_PRODUTOS.CODIGO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=@REFERECIA)
                            AND
                            REFERENCIA=@REFERECIA
                            AND COR_ID>0 AND TAMANHO_ID>0                             )
        where
           CODIGO=(SELECT CAD_PRODUTOS.CODIGO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=@REFERECIA)
           AND
           REFERENCIA=@REFERECIA;


        UPDATE CAD_PRODUTOS set ESTOQUESALDO=0
        where
          (ESTOQUESALDO is null) OR (ESTOQUESALDO < 1);


       
       
        -- Necessario deixar essa função para já ir calculando conforme montar
        -- Grade de produção
        --

        FETCH NEXT FROM Cursor_SPOP_CAD_PRODUTOSGRADE
        INTO
          @TAMANHO,
          @REFERECIA,
          @COR,
          @ORDEM_GRADE,
          @QUANTIDADE
      END

     CLOSE Cursor_SPOP_CAD_PRODUTOSGRADE;
     DEALLOCATE Cursor_SPOP_CAD_PRODUTOSGRADE;

  end;



  -- se houver pedido de venda
   if (@NPEDIDO>0) and (@ORIGEM='PEDIDO')
   begin
      -- configurar para o Loop (while)
      DECLARE Cursor_SPOP_CAD_PRODUTOSGRADE CURSOR FAST_FORWARD FOR

      SELECT distinct TAMANHO, REFERENCIA, COR, ORDEM_GRADE, SUM(QTDE_ESTOQUE) FROM CAD_PRODUTOS_MOVIMENTACAO
      WHERE
         REFERENCIA=@SREFERENCIA
      AND
         TAMANHO>'' AND ORDEM_GRADE>''
      AND
         PEDIDO=@NPEDIDO   

     GROUP BY REFERENCIA, COR, TAMANHO, ORDEM_GRADE
     ORDER BY REFERENCIA, COR, ORDEM_GRADE

     OPEN Cursor_SPOP_CAD_PRODUTOSGRADE

     FETCH NEXT FROM Cursor_SPOP_CAD_PRODUTOSGRADE
     INTO
          @TAMANHO,
          @REFERECIA,
          @COR,
          @ORDEM_GRADE,
          @QUANTIDADE

      -- Loop
      WHILE @@FETCH_STATUS = 0
      BEGIN


         INSERT INTO CAD_PRODUTOS_GRADES(
                     CODIGO
                    ,REFERENCIA
                    ,COR
                    ,TAMANHO
                  ,ORDEM_GRADE
                    ,QUANTIDADE
                    )
              VALUES
                    (
                     (SELECT CAD_PRODUTOS.CODIGO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=@REFERECIA),
                     @REFERECIA,
                     @COR,
                     @TAMANHO,
                     @ORDEM_GRADE,
                     @QUANTIDADE
                    )

        -- ***************************************************************
        -- ***             CONTROLE DE ESTOQUE                      ******
        -- ***************************************************************


        -- QUANTIDADE EM ESTOQUE POR PRODUÇÃO
        UPDATE CAD_PRODUTOS
        set ESTOQUESALDO=  ( select sum(QUANTIDADE) from  CAD_PRODUTOS_GRADES
                            where
                            CODIGO=(SELECT CAD_PRODUTOS.CODIGO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=@REFERECIA)
                            AND
                            REFERENCIA=@REFERECIA
                            AND COR_ID>0 AND TAMANHO_ID>0
                            )
        where
           CODIGO=(SELECT CAD_PRODUTOS.CODIGO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=@REFERECIA)
           AND
           REFERENCIA=@REFERECIA;


        UPDATE CAD_PRODUTOS set ESTOQUESALDO=0
        where
          (ESTOQUESALDO is null) OR (ESTOQUESALDO < 1);



       -- BAIXAR ESTOQUE
       -- EXEC SPOP_PEDIDOBAIXAESTOQUE @NPEDIDO;


        -- Necessario deixar essa função para já ir calculando conforme montar
        -- Grade de produção
        --

        FETCH NEXT FROM Cursor_SPOP_CAD_PRODUTOSGRADE
        INTO
          @TAMANHO,
          @REFERECIA,
          @COR,
          @ORDEM_GRADE,
          @QUANTIDADE
      END

     CLOSE Cursor_SPOP_CAD_PRODUTOSGRADE;
     DEALLOCATE Cursor_SPOP_CAD_PRODUTOSGRADE;

  end;



End


GO
/****** Object:  StoredProcedure [dbo].[SPOP_DELETAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[SPOP_DELETAR] (
    @NEMPRESA    INTEGER,
    @NORDEMPRODUCAO INTEGER
    )
AS
BEGIN

   UPDATE  PEDIDOS SET  PRODUZINDO    ='N',
                        ORDEMPRODUCAO  =0
   WHERE
      EMPRESA=@NEMPRESA
   AND   
      ORDEMPRODUCAO=@NORDEMPRODUCAO
     
   -- ***************************************************************
   -- ***             DELETAR ORDEM DE PRODUÇÃO                ******
   -- ***************************************************************
   DELETE FROM PCP_ORDEMPRODUCAO
   WHERE
      EMPRESA=@NEMPRESA
   AND   
      CODIGO=@NORDEMPRODUCAO;


   -- ***************************************************************
   -- ***             ATUALIZA MOVIMENTAÇÃO (PRODUZIR)         ******
   -- ***************************************************************
   UPDATE MOVIMENTOS_PRODUTOS   SET MOVIMENTOS_PRODUTOS.QTDE_PRODUZIR=coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=MOVIMENTOS_PRODUTOS.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=MOVIMENTOS_PRODUTOS.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=MOVIMENTOS_PRODUTOS.TAMANHO_ID
                                                                     GROUP BY REFERENCIA, COR_ID, TAMANHO_ID),0)
   WHERE
      --MOVIMENTOS_PRODUTOS.EMPRESA=MOVIMENTOS_PRODUTOS.EMPRESA
   --AND
      MOVIMENTOS_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA
   AND
      MOVIMENTOS_PRODUTOS.COR_ID=MOVIMENTOS_PRODUTOS.COR_ID
   AND
      MOVIMENTOS_PRODUTOS.TAMANHO_ID=MOVIMENTOS_PRODUTOS.TAMANHO_ID;



   
END


GO
/****** Object:  StoredProcedure [dbo].[SPOP_DELETARFASE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[SPOP_DELETARFASE] (
    @NEMPRESA    INTEGER,
    @NORDEMPRODUCAO INTEGER
    )
AS
BEGIN
 /*

   -- ***************************************************************
   -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
   -- ***************************************************************
   UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE -
                                                                    coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM FNC_PCPFASEREFERENCIASFILTRAR (@NEMPRESA,@NORDEMPRODUCAO )
                                                                     WHERE
                                                                     --   FNC_PCPFASEREFERENCIASFILTRAR.EMPRESA=CAD_PRODUTOS_GRADES.EMPRESA
                                                                     --AND
                                                                        FNC_PCPFASEREFERENCIASFILTRAR.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                     AND
                                                                        FNC_PCPFASEREFERENCIASFILTRAR.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                     AND
                                                                        FNC_PCPFASEREFERENCIASFILTRAR.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID
                                                                          
                                                                     ),0)
   WHERE
   --   CAD_PRODUTOS_GRADES.EMPRESA=CAD_PRODUTOS_GRADES.EMPRESA
   --AND
      CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
   AND
      CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
   AND
      CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;


   -- ***************************************************************
   -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS qualidade (DIMINUIR)     ******
   -- ***************************************************************
   UPDATE CAD_PRODUTOS_GRADESQUALIDADES   SET CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE=CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE -
                                                                    coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM FNC_PCPFASEREFERENCIASFILTRAR (@NEMPRESA,@NORDEMPRODUCAO )
                                                                     WHERE
                                                                     --   FNC_PCPFASEREFERENCIASFILTRAR.EMPRESA=CAD_PRODUTOS_GRADESQUALIDADES.EMPRESA
                                                                     --AND
                                                                        FNC_PCPFASEREFERENCIASFILTRAR.REFERENCIA=CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA
                                                                     AND
                                                                        FNC_PCPFASEREFERENCIASFILTRAR.COR_ID=CAD_PRODUTOS_GRADESQUALIDADES.COR_ID
                                                                     AND
                                                                        FNC_PCPFASEREFERENCIASFILTRAR.TAMANHO_ID=CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID
                                                                          
                                                                     ),0)
   WHERE
   --   CAD_PRODUTOS_GRADES.EMPRESA=CAD_PRODUTOS_GRADES.EMPRESA
   --AND
      CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA=CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA
   AND
      CAD_PRODUTOS_GRADESQUALIDADES.COR_ID=CAD_PRODUTOS_GRADESQUALIDADES.COR_ID
   AND
      CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID=CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID;



   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS SET 
      ESTOQUESALDO=COALESCE( (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE   CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA AND COR_ID>0 AND TAMANHO_ID>0 ),0)
   WHERE
      CAD_PRODUTOS.EMPRESA=@NEMPRESA
   AND
      CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA


   
   UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=0
   WHERE
      (CAD_PRODUTOS_GRADES.QUANTIDADE<0) OR (CAD_PRODUTOS_GRADES.QUANTIDADE IS NULL);
   
   UPDATE CAD_PRODUTOS    SET CAD_PRODUTOS.ESTOQUESALDO=0
   WHERE
      (CAD_PRODUTOS.ESTOQUESALDO<0) OR (CAD_PRODUTOS.ESTOQUESALDO IS NULL);


   UPDATE CAD_PRODUTOS_GRADESQUALIDADES   SET CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE=0
   WHERE
      (CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE<0) OR (CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE IS NULL);
   

   -- ***************************************************************
   -- ***             APOS DOMINUIR DA GRADE, DELETAR.         ******
   -- ***************************************************************
  */

   DELETE FROM PCP_FASETRANSFERENCIA
   WHERE
      EMPRESA=@NEMPRESA
   AND   
      ORDEMPRODUCAO=@NORDEMPRODUCAO;
      

   DELETE FROM PCP_ORDEMPRODUCAO_LOCALIZACAO
   WHERE
      EMPRESA=@NEMPRESA
   AND   
      ORDEMPRODUCAO=@NORDEMPRODUCAO;


   
END


GO
/****** Object:  StoredProcedure [dbo].[SPOP_GERARLOTEPEDIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPOP_GERARLOTEPEDIDOS]  (
    @NEMPRESA        integer,
    @NORDEMPRODUCAO  integer,
    @DTINICIAL       date,
    @DTFINAL         date,
    @NCLIENTE        integer,
    @NREPRESENTANTE  integer,
    @NLOTE           integer  
    )
as
begin

DECLARE @CL_INICIAL INTEGER=0;
DECLARE @CL_FINAL   INTEGER= 999999;

DECLARE @RP_INICIAL INTEGER=0;
DECLARE @RP_FINAL   INTEGER= 999999;

IF @NCLIENTE>0
BEGIN
   SET @CL_INICIAL=@NCLIENTE;
   SET @CL_FINAL=@NCLIENTE;
END

IF @NREPRESENTANTE>0
BEGIN
   SET @RP_INICIAL=@NREPRESENTANTE;
   SET @RP_FINAL=@NREPRESENTANTE;
END

IF (@NEMPRESA<1) OR (@NEMPRESA IS NULL)
   SET @NEMPRESA=1;

       ------------------------------------------------------------------------
       -- NÃO PERMITIR VALORES NULOS
       ------------------------------------------------------------------------
       UPDATE PCP_ORDEMPRODUCAO_ITENS set QUANTIDADE=0
       WHERE
          (QUANTIDADE is null) OR (QUANTIDADE < 1);

       UPDATE PCP_ORDEMPRODUCAO_ITENS set QTDEPRODUZIDA=0
       WHERE
          (QTDEPRODUZIDA is null) OR (QTDEPRODUZIDA < 1);

       UPDATE PCP_ORDEMPRODUCAO_ITENS set QTDE_RESTANTE=0
       WHERE
          (QTDE_RESTANTE is null) OR (QTDE_RESTANTE < 1);

       UPDATE PCP_ORDEMPRODUCAO_ITENS_GRADE set QUANTIDADE=0
       WHERE
          (QUANTIDADE is null) OR (QUANTIDADE < 1);



       ------------------------------------------------------------------------
       -- ATUALIZAR NUMERO DA "O.P." NA TABELA PEDIDOS
       ------------------------------------------------------------------------
       
       UPDATE PEDIDOS set ORDEMPRODUCAO=@NORDEMPRODUCAO,
                          PRODUZINDO='S',
                          LOTE=@NLOTE
       WHERE 
              PEDIDOS.EMPRESA=@NEMPRESA
       AND
              PEDIDOS.APROVADO='S'
       AND
              PEDIDOS.DATA      BETWEEN @DTINICIAL AND @DTFINAL
       AND
              PEDIDOS.CLIENTE   BETWEEN @CL_INICIAL AND @CL_FINAL
       AND
              PEDIDOS.VENDEDOR  BETWEEN @RP_INICIAL AND @RP_FINAL
       AND
              PEDIDOS.PRODUZINDO IN ('N','NAO');

       ------------------------------------------------------------------------
       -- CARREGAR ITENS DOS PEDIDOS
       ------------------------------------------------------------------------
       Merge
          PCP_ORDEMPRODUCAO_ITENS as Destino
       Using
          ( Select *  From PEDIDOS_ITENS
            WHERE
              PEDIDOS_ITENS.EMPRESA=@NEMPRESA
            AND
              PEDIDOS_ITENS.ORDEMPRODUCAO=@NORDEMPRODUCAO
            AND
              PEDIDOS_ITENS.APROVADO='S'

            ) as Origem
       On
          (Destino.EMPRESA = Origem.EMPRESA
              AND
           Destino.CODIGO=Origem.ORDEMPRODUCAO
              AND
            Destino.REFERENCIA = Origem.REFERENCIA
           )


       When Not Matched By Target Then
                Insert (
                         EMPRESA
                        ,CODIGO
                        ,APROVADO
                        ,DATA
                        ,REFERENCIA
                        ,DESCRICAO
                        ,QUANTIDADE
                        ,QTDEPRODUZIDA
                        ,QTDE_RESTANTE
                        ,TEMPOPRODUCAO

                      )
                Values (
                         (SELECT PCP_ORDEMPRODUCAO.EMPRESA       FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO   )
                        ,(SELECT PCP_ORDEMPRODUCAO.CODIGO        FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO   )
                        ,(SELECT PCP_ORDEMPRODUCAO.APROVADO      FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO   )
                        ,(SELECT PCP_ORDEMPRODUCAO.DATA          FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO   )
                        ,REFERENCIA
                        ,DESCRICAO
                        ,QTDE
                        ,0
                        ,QTDE
                        ,0
                )


       When Matched Then
          Update  set
             Destino.QUANTIDADE=Origem.QTDE,
             Destino.QTDE_RESTANTE=(Destino.QUANTIDADE-Destino.QTDE_RESTANTE)


       When Not Matched By Source  AND (Destino.codigo=@NORDEMPRODUCAO)  Then
          Delete
       Output $action, inserted.*,    deleted.*;

  
       ------------------------------------------------------------------------
       -- CARREGAR GRADE DE CORES E TAMANHOS
       ------------------------------------------------------------------------
   
       Merge
          PCP_ORDEMPRODUCAO_ITENS_GRADE as Destino
       Using
          ( Select *  From PEDIDOS_ITENS_GRADE
            WHERE
              PEDIDOS_ITENS_GRADE.EMPRESA=@NEMPRESA
            AND
              PEDIDOS_ITENS_GRADE.ORDEMPRODUCAO=@NORDEMPRODUCAO
            AND
              PEDIDOS_ITENS_GRADE.APROVADO='S'

            ) as Origem
       On
          (Destino.EMPRESA = Origem.EMPRESA
              AND
           Destino.CODIGO=Origem.ORDEMPRODUCAO
              AND
           Destino.REFERENCIA = Origem.REFERENCIA
              AND
           Destino.COR_ID = Origem.COR_ID
              AND
           Destino.TAMANHO_ID = Origem.TAMANHO_ID
           )


       When Not Matched By Target Then
                Insert (
                         EMPRESA
                        ,CODIGO
                        ,APROVADO
                        ,DATA
                        ,REFERENCIA
                        ,COR_ID
                        ,COR
                        ,TAMANHO_ID
                        ,TAMANHO
                        ,ORDEM_GRADE
                        ,CELULA_COL
                        ,COLUNA_ROW
                        ,QUANTIDADE
                      )
                Values (
                         (SELECT PCP_ORDEMPRODUCAO.EMPRESA      FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO   )
                        ,(SELECT PCP_ORDEMPRODUCAO.CODIGO       FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO   )
                        ,(SELECT PCP_ORDEMPRODUCAO.APROVADO     FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO   )
                        ,(SELECT PCP_ORDEMPRODUCAO.DATA         FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO   )
                        ,REFERENCIA
                        ,COR_ID
                        ,COR
                        ,TAMANHO_ID
                        ,TAMANHO
                        ,ORDEM_GRADE
                        ,CELULA_COL
                        ,COLUNA_ROW
                        ,QUANTIDADE
                )


       When Matched Then
          Update  set
             Destino.QUANTIDADE=Origem.QUANTIDADE


       When Not Matched By Source  AND (Destino.codigo=@NORDEMPRODUCAO)  Then
          Delete



       Output $action, inserted.*,    deleted.*;


       
       ------------------------------------------------------------------------
       -- ATUALIZAR CAMPOS
       ------------------------------------------------------------------------

       UPDATE PCP_ORDEMPRODUCAO set
          QTDE_TOTAL      =  COALESCE( ( SELECT SUM(QUANTIDADE)     FROM  PCP_ORDEMPRODUCAO_ITENS_GRADE WHERE EMPRESA=@NEMPRESA AND CODIGO=@NORDEMPRODUCAO ),0),
          QTDE_PRODUZIDA  =  0,
          QTDE_RESTANTE   =  COALESCE( ( SELECT SUM(QUANTIDADE)     FROM  PCP_ORDEMPRODUCAO_ITENS_GRADE WHERE EMPRESA=@NEMPRESA AND CODIGO=@NORDEMPRODUCAO ),0),
          QTDE_PERDAS     =  0,
          QTDE_DEFEITOS   =  0,
          TEMPO_PRODUCAO  =  0,
          PERCENTUAL      =  0,
          LOTE            =@NLOTE,
          LOTENOME        =COALESCE((SELECT NOME FROM CAD_LOTEPRODUCAO WHERE CAD_LOTEPRODUCAO.CODIGO=@NLOTE ),'')
          

       WHERE
          PCP_ORDEMPRODUCAO.EMPRESA=@NEMPRESA
       AND
          PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO;



       ------------------------------------------------------------------------
       -- ATUALIZAR NUMERO DA "O.P." E INFORMAR QUE ESTA EM PROCESSO DE
       -- PRODUÇÃONA TABELA PEDIDOS
       ------------------------------------------------------------------------
       UPDATE PEDIDOS set PRODUZINDO='S'
       WHERE
              PEDIDOS.EMPRESA=@NEMPRESA
       AND
              PEDIDOS.APROVADO='S'
       AND
              PEDIDOS.ORDEMPRODUCAO=@NORDEMPRODUCAO
       AND
              PEDIDOS.PRODUZINDO IN ('N','NAO');

 


End


GO
/****** Object:  StoredProcedure [dbo].[SPOP_MATERIAPRIMABAIXAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure  [dbo].[SPOP_MATERIAPRIMABAIXAR]  (
    @NORDEMPRODUCAO integer,
    @ACAO varchar(20))
as
begin


    -- **************************************************************
    -- ***   BAIXAR PRODUTOS DO ESTOQUE VIA ORDEM DE PRODUCAO  ******
    -- **************************************************************
    if (( @ACAO='BAIXAR') or (@ACAO='B') )
    begin
       -- **************************************************************
       -- ***   MATERIA PRIMA  -  BAIXAR NA PRODUCAO              ******
       -- **************************************************************
      
       UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO - coalesce(   ( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QUANTIDADE FROM VIEW_ORDEMPRODUCAO_MATERIAPRIMA
                                                                         WHERE
                                                                            --VIEW_ORDEMPRODUCAO_MATERIAPRIMA.CODIGO=CAD_PRODUTOS.CODIGO
                                                                         --AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMA.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                         AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMA.ORDEMPRODUCAO=@NORDEMPRODUCAO
                                                                            )
                                                                            ,0)
       WHERE
          CAD_PRODUTOS.CODIGO=CAD_PRODUTOS.CODIGO
       AND
          CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA;
     
       
       -- **************************************************************
       -- ***   MATERIA PRIMA POR GRADE  -  BAIXAR NA PRODUCAO    ******
       -- **************************************************************
       UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE - coalesce(   ( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QUANTIDADE FROM VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE
                                                                         WHERE
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                         AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                         AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE.ORDEMPRODUCAO=@NORDEMPRODUCAO ),0)
       WHERE
          CAD_PRODUTOS_GRADES.CODIGO=CAD_PRODUTOS_GRADES.CODIGO
       AND
          CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
       AND
          CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;

     
       -- **************************************************************
       -- ***   MATERIA PRIMA TECIDOS  -  BAIXAR NA PRODUCAO      ******
       -- **************************************************************
      
       UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO - coalesce(   ( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QUANTIDADE FROM VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS
                                                                         WHERE
                                                                            --VIEW_ORDEMPRODUCAO_MATERIAPRIMA.CODIGO=CAD_PRODUTOS.CODIGO
                                                                         --AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                         AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS.ORDEMPRODUCAO=@NORDEMPRODUCAO
                                                                            )
                                                                            ,0)
       WHERE
          CAD_PRODUTOS.CODIGO=CAD_PRODUTOS.CODIGO
       AND
          CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA;


    end -- if (@ACAO='BAIXAR')


    -- **************************************************************
    -- ***   MATERIA PRIMA POR GRADE  - DEVOLVER PRODUTOS      ******
    -- **************************************************************
    if (( @ACAO='DEVOLVER') or (@ACAO='D') )
    begin
       -- **************************************************************
       -- ***   MATERIA PRIMA  -  DEVOLVER PRODUTOS               ******
       -- **************************************************************
      
       UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO + coalesce(   ( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QUANTIDADE FROM VIEW_ORDEMPRODUCAO_MATERIAPRIMA
                                                                         WHERE
                                                                            --VIEW_ORDEMPRODUCAO_MATERIAPRIMA.CODIGO=CAD_PRODUTOS.CODIGO
                                                                         --AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMA.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                         AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMA.ORDEMPRODUCAO=@NORDEMPRODUCAO
                                                                            )
                                                                            ,0)
       WHERE
          CAD_PRODUTOS.CODIGO=CAD_PRODUTOS.CODIGO
       AND
          CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA;


       

       -- **************************************************************
       -- ***   MATERIA PRIMA POR GRADE  - DEVOLVER PRODUTOS      ******
       -- **************************************************************
       UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE + coalesce(   ( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QUANTIDADE FROM VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE
                                                                         WHERE
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                         AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                         AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE.ORDEMPRODUCAO=@NORDEMPRODUCAO ),0)
       WHERE
          CAD_PRODUTOS_GRADES.CODIGO=CAD_PRODUTOS_GRADES.CODIGO
       AND
          CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
       AND
          CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;
       

       -- **************************************************************
       -- ***   MATERIA PRIMA TECIDOS  -  DEVOLVER PRODUTOS       ******
       -- **************************************************************
      
       UPDATE CAD_PRODUTOS   SET CAD_PRODUTOS.ESTOQUESALDO=CAD_PRODUTOS.ESTOQUESALDO + coalesce(   ( SELECT SUM(QTDE_CONSUMOSTOTAL) AS QUANTIDADE FROM VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS
                                                                         WHERE
                                                                            --VIEW_ORDEMPRODUCAO_MATERIAPRIMA.CODIGO=CAD_PRODUTOS.CODIGO
                                                                         --AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA
                                                                         AND
                                                                            VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS.ORDEMPRODUCAO=@NORDEMPRODUCAO
                                                                            )
                                                                            ,0)
       WHERE
          CAD_PRODUTOS.CODIGO=CAD_PRODUTOS.CODIGO
       AND
          CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA;



    end; -- if (@ACAO='DEVOLVER')


    -- **************************************************************
    -- ***   PRODUTOS -  ACERTAR SALDO DO ESTOQUE              ******
    -- **************************************************************
   
    
  
    UPDATE CAD_PRODUTOS set ESTOQUESALDO=0
    WHERE
       (ESTOQUESALDO is null) OR (ESTOQUESALDO < 1);

    UPDATE CAD_PRODUTOS_GRADES set QUANTIDADE=0
    WHERE
       (QUANTIDADE is null) OR (QUANTIDADE < 1);
    

END


GO
/****** Object:  StoredProcedure [dbo].[SPOP_MONTARFASES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPOP_MONTARFASES]  (
    @NEMPRESA       INTEGER,
    @NORDEMPRODUCAO INTEGER,
    @NFASEGRADE     INTEGER,
    @ACAO VARCHAR(10)
    )
AS
BEGIN

 DECLARE @NFASE				ICODIGO ;
 DECLARE @SORDEM   		    SCODIGO ;

 IF (@ACAO='DELETAR')
 BEGIN
    DELETE FROM PCP_ORDEMPRODUCAO_ANDAMENTO
    WHERE
       EMPRESA=@NEMPRESA
    AND
       CODIGO=@NORDEMPRODUCAO   
 END;   --IF (ACAO='DELETAR')



 IF (@ACAO='CRIAR')
 BEGIN
       ------------------------------------------------------------------------
       -- PESQUISAR INFORMAÇÕES
       ------------------------------------------------------------------------
       DECLARE crCursorTabelaFases CURSOR FAST_FORWARD FOR

          -- select na tabela mestre (percorrer ela toda)
          SELECT FASE, ORDEM

          FROM CAD_FASESGRADE_LISTA
          WHERE
             CODIGO=@NFASEGRADE

          OPEN crCursorTabelaFases

          FETCH NEXT FROM crCursorTabelaFases
          INTO
            @NFASE,
            @SORDEM


       WHILE @@FETCH_STATUS = 0
       BEGIN
       ------------------------------------------------------------------------
       --
       ------------------------------------------------------------------------

        INSERT INTO PCP_ORDEMPRODUCAO_ANDAMENTO(
                	EMPRESA,
    	            CODIGO,
    	            TERCEIRIZADO,
    	            FASE,
    	            FASEORDEM,
    	            FASETRANSFERENCIA,
    	            REFERENCIA,
    	            IDENTIFICADOR,
    	            DESCRICAO,
    	            COR_ID,
    	            COR,
    	            TAMANHO_ID,
    	            TAMANHO,
    	            ORDEM_GRADE,
    	            QTDE_PRODUZIR,
    	            QTDE_TRANSFERIDA,
    	            QTDE_PENDENTE,
    	            QTDE_DEFEITO,
    	            QTDE_PERDA,
    	            
    	            SOBRA
    	            )
                 (
            SELECT
              DISTINCT
                	EMPRESA,
    	            CODIGO,
    	            0,
    	            @NFASE,
    	            @SORDEM,
    	            0,
    	            REFERENCIA,
    	            dbo.FNC_IDENTIFICADOR(REFERENCIA,COR_ID, TAMANHO_ID),
    	            ( SELECT DESCRICAO FROM CAD_PRODUTOS WHERE EMPRESA=@NEMPRESA AND REFERENCIA=FNC_PCPFASEREFERENCIASFILTRAR.REFERENCIA ),
    	            COR_ID,
    	            COR,
    	            TAMANHO_ID,
    	            TAMANHO,
    	            ORDEM_GRADE,
    	            
    	            CASE
    	               WHEN (@NFASE=1) OR (@SORDEM='001') THEN QTDE_TOTAL
    	               ELSE
    	                  0
    	            END,
    	            0,
    	            CASE
    	               WHEN (@NFASE=1) OR (@SORDEM='001') THEN QTDE_TOTAL
    	               ELSE
    	                  0
    	            END,
    	            0,
    	            0,
    	            
    	            'N'

               FROM FNC_PCPFASEREFERENCIASFILTRAR(@NEMPRESA, @NORDEMPRODUCAO)

               )

          ------------------------------------------------------------------------
          -- OBTER DADOS DO PROXIMO CURSOR (REGISTRO)
          ------------------------------------------------------------------------
          FETCH NEXT FROM crCursorTabelaFases
          INTO
            @NFASE,
            @SORDEM

       END

       CLOSE crCursorTabelaFases
       DEALLOCATE crCursorTabelaFases;
       
       



       ------------------------------------------------------------------------
       -- PCP_ORDEMPRODUCAO_LOCALIZACAO
       ------------------------------------------------------------------------
                    
        INSERT INTO PCP_ORDEMPRODUCAO_LOCALIZACAO(
                	EMPRESA,
    	            ORDEMPRODUCAO,
    	            DATAOP,
    	            DATAPREVISAO,
    	            DATAINICIOFASE,
    	            TERCEIRIZADO,
    	            LOTE,
    	            LOTE_NOME,
    	            FASE,
    	            REFERENCIA,
    	            DESCRICAO,
    	            QTDE_PRODUZIR,
    	            QTDE_TRANSFERIDA,
    	            QTDE_PENDENTE,
    	            QTDE_DEFEITO,
    	            QTDE_PERDA
    	            
    	            )
                 (
            SELECT
              DISTINCT
                	EMPRESA,
    	            CODIGO,
    	            (SELECT DATA FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO  ),
    	            (SELECT DATAPREVISAO FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.CODIGO=@NORDEMPRODUCAO  ),
    	            getdate(),
    	            TERCEIRIZADO,
    	            0,
    	            '',
    	            FASE,
    	            REFERENCIA,
    	            DESCRICAO,
    	            QTDE_PRODUZIR,
    	            QTDE_TRANSFERIDA,
    	            QTDE_PENDENTE,
    	            QTDE_DEFEITO,
    	            QTDE_PERDA

               FROM PCP_ORDEMPRODUCAO_ANDAMENTO
               WHERE
               CODIGO=@NORDEMPRODUCAO
               AND
               FASE=1
                and
               QTDE_PRODUZIR>0
               
               );
               
               update PCP_ORDEMPRODUCAO_LOCALIZACAO set QTDE_PRODUZIR=coalesce( (select SUM(QTDE_TOTAL) from FNC_PCPFASEREFERENCIASFILTRAR(@NEMPRESA, @NORDEMPRODUCAO))  ,0);
               
               


               

 END;   --IF (ACAO='CRIAR')




END


GO
/****** Object:  StoredProcedure [dbo].[SPOP_PEDIDOBAIXARESTOQUE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPOP_PEDIDOBAIXARESTOQUE] 
as
BEGIN

        -- ***************************************************************
        -- ***             ATUALIZA ESTOQUE (PRODUZIDOS)            ******
        -- ***************************************************************
        UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=coalesce(( SELECT SUM(QTDE_ESTOQUE) AS QTDE_ESTOQUE FROM CAD_PRODUTOS_MOVIMENTACAO
                                                                          WHERE
                                                                             CAD_PRODUTOS_MOVIMENTACAO.OP_LOTE>0
                                                                          AND
                                                                             CAD_PRODUTOS_MOVIMENTACAO.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                          AND
                                                                             CAD_PRODUTOS_MOVIMENTACAO.COR=CAD_PRODUTOS_GRADES.COR
                                                                          AND
                                                                             CAD_PRODUTOS_MOVIMENTACAO.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                          GROUP BY REFERENCIA, COR, TAMANHO),0)
        WHERE
           CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
        AND
           CAD_PRODUTOS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
        AND
           CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;


        /*
        -- ***************************************************************
        -- ***             ATUALIZA ESTOQUE (VENDIDOS)              ******
        -- ***************************************************************
        UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE-coalesce(   ( SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM PEDIDOS_ITENS_GRADE
                                                                          WHERE
                                                                             PEDIDOS_ITENS_GRADE.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                          AND
                                                                             PEDIDOS_ITENS_GRADE.COR=CAD_PRODUTOS_GRADES.COR
                                                                          AND
                                                                             PEDIDOS_ITENS_GRADE.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO
                                                                          AND
                                                                           (SELECT PEDIDOS.APROVADO FROM PEDIDOS WHERE CODIGO=PEDIDOS_ITENS_GRADE.PEDIDO )='S'   
                                                                          GROUP BY REFERENCIA, COR, TAMANHO),0)
        WHERE
           CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
        AND
           CAD_PRODUTOS_GRADES.COR=CAD_PRODUTOS_GRADES.COR
        AND
           CAD_PRODUTOS_GRADES.TAMANHO=CAD_PRODUTOS_GRADES.TAMANHO;

*/
        -- ***************************************************************
        -- ***             NÃO PERMITIR ESTOQUE NEGATIVO ESTOQUE    ******
        -- ***************************************************************
        UPDATE CAD_PRODUTOS_GRADES 
           SET CAD_PRODUTOS_GRADES.QUANTIDADE=0
        WHERE
          (QUANTIDADE is null) OR (QUANTIDADE < 1);


        UPDATE CAD_PRODUTOS set ESTOQUESALDO=0
        where
          (ESTOQUESALDO is null) OR (ESTOQUESALDO < 1);


END


GO
/****** Object:  StoredProcedure [dbo].[SPOP_STATUSDISTRIBUIR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPOP_STATUSDISTRIBUIR] (
    @NREMESSA integer,
    @PRODUZIR float output,
    @PRODUZIDO float output,
    @FALTAM float output,
    @CONCLUIDO float output)
as
begin

   set @CONCLUIDO =0;

   SELECT @PRODUZIR=SUM(QUANTIDADE)
   from  PCP_DISTRIBUIR_RGRADE_REMESSA
   where
      CODIGO=@NREMESSA

  
   if (@PRODUZIR<0) 
     set @PRODUZIR=0;

   SELECT @PRODUZIDO=SUM(QUANTIDADE)
   from  PCP_DISTRIBUIR_RGRADE_RETORNO
   where
      CODIGO     =@NREMESSA

   if (@PRODUZIDO<0) 
     set @PRODUZIDO=0;

   set @FALTAM = @PRODUZIR - @PRODUZIDO;

   if (@PRODUZIDO>0 and @PRODUZIR>0) 
   begin
      /* calcular o percentual concluido  */
      set @CONCLUIDO=((@PRODUZIDO / @PRODUZIR) * 100);

      /* converter para numero inteiro */
      set @CONCLUIDO =Cast(@CONCLUIDO as Integer);
   end



end


GO
/****** Object:  StoredProcedure [dbo].[SPOP_TERCEIRIZADO_CALCULA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPOP_TERCEIRIZADO_CALCULA] (
    @NEMPRESA integer,
    @NREMESSA integer,
    @NQUANTIDADE IQUANTIDADE
    )
as
begin

DECLARE @NCUSTUNIT VALOR;


SET @NCUSTUNIT=coalesce( (SELECT  VLR_UNITARIO FROM PCP_FASETRANSFERENCIA WHERE PCP_FASETRANSFERENCIA.EMPRESA=@NEMPRESA AND  PCP_FASETRANSFERENCIA.CODIGO=@NREMESSA)  ,0)  ;


  
   UPDATE PCP_FASETRANSFERENCIA_REFERENCIAS  set QTDE_ENVIADA=0
   where
     QTDE_ENVIADA is null;

   UPDATE PCP_FASETRANSFERENCIA_REFERENCIAS  set QTDE_RETORNADA=0
   where
     QTDE_RETORNADA is null;

   UPDATE PCP_FASETRANSFERENCIA_REFERENCIAS  set QTDE_PERDAS=0
   where
     QTDE_PERDAS is null;

   UPDATE PCP_FASETRANSFERENCIA_REFERENCIAS  set QTDE_DEFEITOS=0
   where
     QTDE_DEFEITOS is null;



   /* INFORMAR  CUSTO ITENS  */
  
  update PCP_FASETRANSFERENCIA_REFERENCIAS  set VLR_UNIT=@NCUSTUNIT 
  where
    PCP_FASETRANSFERENCIA_REFERENCIAS.EMPRESA=@NEMPRESA
  AND  
    PCP_FASETRANSFERENCIA_REFERENCIAS.CODIGO=@NREMESSA;
  
  
   /* INFORMAR  CAMPOS NA TABELA MESTRE  */
  
  update dbo.PCP_FASETRANSFERENCIA  set 
      QTDE_ENVIADA    = coalesce( (SELECT  SUM(QTDE_ENVIADA)     FROM PCP_FASETRANSFERENCIA_REFERENCIAS WHERE PCP_FASETRANSFERENCIA_REFERENCIAS.EMPRESA=@NEMPRESA AND  PCP_FASETRANSFERENCIA_REFERENCIAS.CODIGO=@NREMESSA)  ,0)  ,
      QTDE_RETORNADA  = @NQUANTIDADE, --coalesce( (SELECT  SUM(QTDE_RETORNADA)   FROM PCP_FASETRANSFERENCIA_REFERENCIAS WHERE PCP_FASETRANSFERENCIA_REFERENCIAS.EMPRESA=@NEMPRESA AND  PCP_FASETRANSFERENCIA_REFERENCIAS.CODIGO=@NREMESSA)  ,0)  ,
      QTDE_PERDAS     = coalesce( (SELECT  SUM(QTDE_PERDAS)      FROM PCP_FASETRANSFERENCIA_REFERENCIAS WHERE PCP_FASETRANSFERENCIA_REFERENCIAS.EMPRESA=@NEMPRESA AND  PCP_FASETRANSFERENCIA_REFERENCIAS.CODIGO=@NREMESSA)  ,0)  ,
      QTDE_DEFEITOS   = coalesce( (SELECT  SUM(QTDE_DEFEITOS)    FROM PCP_FASETRANSFERENCIA_REFERENCIAS WHERE PCP_FASETRANSFERENCIA_REFERENCIAS.EMPRESA=@NEMPRESA AND  PCP_FASETRANSFERENCIA_REFERENCIAS.CODIGO=@NREMESSA)  ,0)  
  
  where
    dbo.PCP_FASETRANSFERENCIA.EMPRESA=@NEMPRESA
  AND  
    dbo.PCP_FASETRANSFERENCIA.CODIGO=@NREMESSA;




end


GO
/****** Object:  StoredProcedure [dbo].[SPOP_TERCEIRIZADO_PAGAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[SPOP_TERCEIRIZADO_PAGAR]  (
    @NEMPRESA      INTEGER,
    @NREMESSA      INTEGER,
    @NFFASE        INTEGER,
    @NFORNECEDOR   INTEGER,
    @DDATA         DATE,
    @DVENCIMENTO   DATE,
    @NFORMA_PAGTO  INTEGER,
    @STIPOPAGMENTO VARCHAR(30),
    @NVALOR        FLOAT,
    @ACAO          VARCHAR(30)
    )
AS
BEGIN

    if @ACAO='INCLUIR'
    begin
    INSERT INTO FIN_CTAPAGAR
              (FORNECEDOR
              ,NOTAFISCAL
              ,REMESSA
              ,DATA
              ,VENCIMENTO
              ,FORMA_PAGTO
              ,DOCUMENTO
              ,ESPECIE
              ,TIPO
              ,VALOR
              ,PAGTOTERCEIRIZADO
              ,PLANO_CONTAS
              ,HISTORICO
              ,OBSERVACAO
              )
        VALUES
              (@NFORNECEDOR
              ,'0'
              ,@NREMESSA
              ,@DDATA
              ,@DVENCIMENTO
              ,@NFORMA_PAGTO
              ,'TERC-'+CAST(@NREMESSA AS VARCHAR(30))
              ,@STIPOPAGMENTO
              ,'PAGAR'
              ,@NVALOR
              ,'S'
              ,(SELECT PLANO_CONTAS FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=@NFORNECEDOR  )
              ,'TERCEIRIZADO/PAGAMENTO | CODIGO REMESSA: '+CAST(@NREMESSA AS VARCHAR(30))+' | FASE: '+CAST(@NFFASE AS VARCHAR(30))
              ,''
              );
              
              
       UPDATE PCP_FASETRANSFERENCIA SET GEROUPAGAMENTO='S'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NREMESSA;
          
       UPDATE PCP_FASETRANSFERENCIA SET ENCERRADO='S'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NREMESSA;


       UPDATE PCP_FASETRANSFERENCIA_REFERENCIAS SET GEROUPAGAMENTO='S'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NREMESSA;
          
    end

    if @ACAO='EXCLUIR'
    begin

      DELETE FROM FIN_CTAPAGAR
       WHERE
          FIN_CTAPAGAR.EMPRESA=@NEMPRESA
       AND
          FIN_CTAPAGAR.REMESSA=@NREMESSA
       AND
          FIN_CTAPAGAR.FORNECEDOR=@NFORNECEDOR;


       UPDATE PCP_FASETRANSFERENCIA SET ENCERRADO='N'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NREMESSA;
          
       UPDATE PCP_FASETRANSFERENCIA SET GEROUPAGAMENTO='S'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NREMESSA;
          
       UPDATE PCP_FASETRANSFERENCIA_REFERENCIAS SET GEROUPAGAMENTO='S'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NREMESSA;
          
    End

END


GO
/****** Object:  StoredProcedure [dbo].[SPORDEMSERVICOS_CALCULA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SPORDEMSERVICOS_CALCULA] (
    @NEMPRESA integer,
    @CODIGO integer)
as
begin

   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------

  update PEDIDOS_ITENS set
        PEDIDOS_ITENS.VLR_TOTAL    = 0
  where
        EMPRESA=@NEMPRESA 
  and   
        PEDIDOS_ITENS.CODIGO=@CODIGO;


  update PEDIDOS_ITENS set
     PEDIDOS_ITENS.VLR_TOTAL            = COALESCE(PEDIDOS_ITENS.QTDE,0) * COALESCE(PEDIDOS_ITENS.VLR_UNIT,0)
  where
     PEDIDOS_ITENS.EMPRESA=@NEMPRESA
  and   
     PEDIDOS_ITENS.CODIGO=@CODIGO;


  update PEDIDOS_ITENS set
        PEDIDOS_ITENS.VLR_DESCONTO         = COALESCE(PEDIDOS_ITENS.VLR_TOTAL,0) * (COALESCE(PEDIDOS_ITENS.DESCONTO,0) / 100)
  where
        EMPRESA=@NEMPRESA 
  and   
        PEDIDOS_ITENS.CODIGO=@CODIGO;


  update PEDIDOS_ITENS set
        PEDIDOS_ITENS.VLR_TOTAL    = coalesce(PEDIDOS_ITENS.VLR_TOTAL,0) - coalesce(PEDIDOS_ITENS.VLR_DESCONTO,0)
  where
        EMPRESA=@NEMPRESA 
  and   
        PEDIDOS_ITENS.CODIGO=@CODIGO;

   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE SERVIÇOS INTERNOS - 
   ------------------------------------------------------------------------
  update PEDIDOS_SERVICOS set
     PEDIDOS_SERVICOS.VLR_TOTAL            = COALESCE(PEDIDOS_SERVICOS.QTDE,0) * COALESCE(PEDIDOS_SERVICOS.VLR_UNIT,0)
  where
     PEDIDOS_SERVICOS.EMPRESA=@NEMPRESA
  and   
     PEDIDOS_SERVICOS.CODIGO=@CODIGO;


   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE SERVIÇOS EXTERNOS - 
   ------------------------------------------------------------------------
  update PEDIDOS_TERCEIROS set
     PEDIDOS_TERCEIROS.VLR_TOTAL            = COALESCE(PEDIDOS_TERCEIROS.QTDE,0) * COALESCE(PEDIDOS_TERCEIROS.VLR_UNIT,0)
  where
     PEDIDOS_TERCEIROS.EMPRESA=@NEMPRESA
  and   
     PEDIDOS_TERCEIROS.CODIGO=@CODIGO;


   ------------------------------------------------------------------------
   -- SOMAR TOTAL DO PEDIDO 
   ------------------------------------------------------------------------
  /* SOMAR TOTAL DO PEDIDO */
  UPDATE PEDIDOS  SET
     PEDIDOS.VLR_TOTAL       = 0
  WHERE
    EMPRESA=@NEMPRESA 
  AND 
    CODIGO=@CODIGO;


   ------------------------------------------------------------------------
   -- SOMAR TOTAL DO PEDIDO 
   ------------------------------------------------------------------------
  /* SOMAR TOTAL DO PEDIDO */
  UPDATE PEDIDOS  SET
     /* QUANTIDADE TOTAL DE PRODUTOS */
     PEDIDOS.QTDE_PRODUTOS   = (SELECT SUM(PEDIDOS_ITENS.QTDE)         FROM  PEDIDOS_ITENS WHERE  EMPRESA=@NEMPRESA AND PEDIDOS_ITENS.CODIGO=@CODIGO),

     /* QUANTIDADE TOTAL DE PRODUTOS */
     PEDIDOS.QTDE_TOTAL      = (SELECT SUM(PEDIDOS_ITENS.QTDE)         FROM  PEDIDOS_ITENS WHERE  EMPRESA=@NEMPRESA AND  PEDIDOS_ITENS.CODIGO=@CODIGO ),

     /* VALOR TOTAL DOS PRODUTOS */
     --PEDIDOS.VLR_PRODUTOS    = (SELECT SUM(PEDIDOS_ITENS.VLR_TOTAL)     FROM  PEDIDOS_ITENS WHERE  PEDIDOS_ITENS.CODIGO=@CODIGO ),
     PEDIDOS.VLR_PRODUTOS    = (SELECT SUM(PEDIDOS_ITENS.QTDE * PEDIDOS_ITENS.VLR_UNIT)     FROM  PEDIDOS_ITENS WHERE  EMPRESA=@NEMPRESA AND  PEDIDOS_ITENS.CODIGO=@CODIGO ),

     /* QUANTIDADE TOTAL DE SERVIÇOS - INTERNOS */
     PEDIDOS.QTDE_SERVICOS   = (SELECT SUM(PEDIDOS_SERVICOS.QTDE)        FROM  PEDIDOS_SERVICOS WHERE  PEDIDOS_SERVICOS.EMPRESA=@NEMPRESA AND  PEDIDOS_SERVICOS.CODIGO=@CODIGO),

     /* VALOR TOTAL DOS SERVIÇOS - INTERNOS */
     PEDIDOS.VLR_SERVICOS    = (SELECT SUM(PEDIDOS_SERVICOS.VLR_TOTAL)  FROM  PEDIDOS_SERVICOS WHERE  PEDIDOS_SERVICOS.EMPRESA=@NEMPRESA AND  PEDIDOS_SERVICOS.CODIGO=@CODIGO),


     /* QUANTIDADE TOTAL DE SERVIÇOS - EXTERNOS */
     PEDIDOS.QTDE_TERCEIRIZADOS   = (SELECT SUM(PEDIDOS_TERCEIROS.QTDE)        FROM  PEDIDOS_TERCEIROS WHERE  PEDIDOS_TERCEIROS.EMPRESA=@NEMPRESA AND  PEDIDOS_TERCEIROS.CODIGO=@CODIGO),

     /* VALOR TOTAL DOS SERVIÇOS - EXTERNOS */
     PEDIDOS.VLR_TERCEIRIZADOS    = (SELECT SUM(PEDIDOS_TERCEIROS.VLR_TOTAL)  FROM  PEDIDOS_TERCEIROS WHERE  PEDIDOS_TERCEIROS.EMPRESA=@NEMPRESA AND  PEDIDOS_TERCEIROS.CODIGO=@CODIGO)


  WHERE
    EMPRESA=@NEMPRESA 
  AND 
    CODIGO=@CODIGO;


  UPDATE PEDIDOS  SET
     PEDIDOS.VLR_TOTAL       = PEDIDOS.VLR_TOTAL + PEDIDOS.VLR_PRODUTOS + PEDIDOS.VLR_SERVICOS + PEDIDOS.VLR_TERCEIRIZADOS
  WHERE
    EMPRESA=@NEMPRESA 
  AND 
    CODIGO=@CODIGO;


  update PEDIDOS set VLR_DESCONTO=0
  where
     VLR_DESCONTO is null;

  update PEDIDOS set DESCONTO=0
  where
     DESCONTO is null;


  update PEDIDOS set VLR_TOTAL=0
  where
     VLR_TOTAL is null;


  update PEDIDOS  set
     PEDIDOS.VLR_DESCONTO      =   coalesce(PEDIDOS.VLR_TOTAL,0) * (coalesce(PEDIDOS.DESCONTO,0) / 100)
  where
    EMPRESA=@NEMPRESA 
  and 
    CODIGO=@CODIGO;

  update PEDIDOS  set
     PEDIDOS.VLR_DESCONTO    = PEDIDOS.VLR_DESCONTO + coalesce((SELECT SUM(PEDIDOS_ITENS.VLR_DESCONTO)         FROM  PEDIDOS_ITENS WHERE  EMPRESA=@NEMPRESA AND PEDIDOS_ITENS.CODIGO=@CODIGO),0)
  where
    CODIGO=@CODIGO;


  
  update PEDIDOS  set
     PEDIDOS.VLR_TOTAL    = coalesce(PEDIDOS.VLR_TOTAL,0) - coalesce(PEDIDOS.VLR_DESCONTO,0)
  where
    CODIGO=@CODIGO;



end



GO
/****** Object:  StoredProcedure [dbo].[SPPCP_FASEATUALIZAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPCP_FASEATUALIZAR]  (
    @NEMPRESA    INTEGER,
    @NORDEMPRODUCAO INTEGER
    )
AS
BEGIN

   ------------------------------------------------------------------------
   -- ATUALIZAR TABELA MOVIMENTAÇÃO DE OPM (PCP_ORDEMPRODUCAO_MOVIMENTO)
   ------------------------------------------------------------------------
   MERGE
      PCP_ORDEMPRODUCAO_FASES AS DESTINO
   USING
      ( SELECT *  FROM FNC_PCPFASEREFERENCIASFILTRAR(@NEMPRESA, @NORDEMPRODUCAO)  ) AS ORIGEM
   ON
      (DESTINO.EMPRESA = ORIGEM.EMPRESA
       AND
       DESTINO.CODIGO = ORIGEM.CODIGO
       AND
       DESTINO.REFERENCIA = ORIGEM.REFERENCIA
       AND
       DESTINO.COR_ID = ORIGEM.COR_ID
       AND
       DESTINO.TAMANHO_ID = ORIGEM.TAMANHO_ID
        )
         

   WHEN NOT MATCHED BY TARGET THEN
            INSERT (
	            EMPRESA,
	            CODIGO,
	            APROVADO,
	            DATA,
	            REFERENCIA,
	            COR_ID ,
	            COR,
	            TAMANHO_ID,
	            TAMANHO,
	            ORDEM_GRADE,
	            QTDE_TOTAL ,
	            QTDE_PRODUZIDA ,
	            QTDE_RESTANTE ,
	            PERCENTUAL ,
	            TERCEIRIZADO ,
	            FASEATUAL ,
	            CELULAATUAL ,
	            MAQUINAATUAL ,
	            OPERADORATUAL ,
	            PROCESSOATUAL ,
	            TURNOATUAL ,
	            QUALIDADEATUAL ,
	            DEFEITOATUAL

                  )
            VALUES (
	            EMPRESA,
	            CODIGO,
	            APROVADO,
	            DATA,
	            REFERENCIA,
	            COR_ID ,
	            COR,
	            TAMANHO_ID,
	            TAMANHO,
	            ORDEM_GRADE,
	            QTDE_TOTAL ,
	            QTDE_PRODUZIDA ,
	            QTDE_RESTANTE ,
	            PERCENTUAL ,
	            TERCEIRIZADO ,
	            FASEATUAL ,
	            CELULAATUAL ,
	            MAQUINAATUAL ,
	            OPERADORATUAL ,
	            PROCESSOATUAL ,
	            TURNOATUAL ,
	            QUALIDADEATUAL ,
	            DEFEITOATUAL

            )


 
  
   WHEN MATCHED THEN
      
      UPDATE  SET
         DESTINO.QUALIDADEATUAL=coalesce(ORIGEM.QUALIDADEATUAL,0),
         DESTINO.TERCEIRIZADO=coalesce(ORIGEM.TERCEIRIZADO,0),
         DESTINO.DATAENVIO=ORIGEM.DATAENVIO,
         DESTINO.DATARETORNO=ORIGEM.DATARETORNO,
         DESTINO.FASEATUAL=coalesce(ORIGEM.FASEATUAL,0),
         DESTINO.VLR_CUSTO=coalesce(ORIGEM.VLR_CUSTO,0),
         DESTINO.OBSERVACAO=coalesce(ORIGEM.OBSERVACAO,'')

   
   WHEN NOT MATCHED BY SOURCE AND (DESTINO.APROVADO='N') AND (DESTINO.CODIGO=@NORDEMPRODUCAO) THEN
      DELETE
      
   OUTPUT $ACTION, INSERTED.*,    DELETED.*;

   ------------------------------------------------------------------------
   -- ATUALIZAR FASE 
   ------------------------------------------------------------------------
   /*
   UPDATE PCP_ORDEMPRODUCAO_FASES 
   SET FASEATUAL=(SELECT TOP 1 FASE  FROM  CAD_FASESGRADE_LISTA WHERE FASE=(SELECT FASE FROM CAD_PRODUTOS WHERE EMPRESA=PCP_ORDEMPRODUCAO_FASES.EMPRESA AND REFERENCIA=PCP_ORDEMPRODUCAO_FASES.REFERENCIA)  
                  ORDER BY ORDEM
                  )
   WHERE
      EMPRESA=@NEMPRESA
   AND
      CODIGO=@NORDEMPRODUCAO
   AND
      FASEATUAL<0;
*/


END


GO
/****** Object:  StoredProcedure [dbo].[SPPCP_FASETRANSFERENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[SPPCP_FASETRANSFERENCIA]  (
    @NEMPRESA        INTEGER,
    @NREMESSA        INTEGER,
    @NORDEMPRODUCAO  INTEGER,
    @DTDATA          DATE,
    @DTDATARETORNO   DATE,
    @NTERCEIRIZADO   INTEGER,
    @SREFERENCIA     VARCHAR(30),
    @NFASE           INTEGER,
    @NVALOR          FLOAT  ,
    @TSOBRA          VARCHAR(30)
    
    )
AS
BEGIN

    INSERT INTO PCP_FASETRANSFERENCIA_REFERENCIAS(
	            EMPRESA,
	            CODIGO,
	            ORDEMPRODUCAO,
	            DATA,
	            DATARETORNO,
	            TERCEIRIZADO,
	            FASE,
	            REFERENCIA,
	            COR_ID ,
	            COR,
	            TAMANHO_ID,
	            TAMANHO,
	            ORDEM_GRADE,
	            QTDE_ENVIADA ,
	            QTDE_RETORNADA ,
	            QTDE_PERDAS ,
	            QTDE_DEFEITOS,
	            VLR_UNIT
    	            )  
           (  
        SELECT
          DISTINCT
	            @NEMPRESA,
	            @NREMESSA,
	            @NORDEMPRODUCAO,
	            @DTDATA,
	            @DTDATARETORNO,
	            @NTERCEIRIZADO,
	            @NFASE,
	            REFERENCIA,
	            COR_ID ,
	            COR,
	            TAMANHO_ID,
	            TAMANHO,
	            ORDEM_GRADE,
	            QTDE_ENVIAR ,
	            0 ,
	            0,
	            0,
	            0
          
           FROM PCP_ORDEMPRODUCAOFASEREFERENCIAS

           WHERE EMPRESA=@NEMPRESA AND ORDEMPRODUCAO=@NORDEMPRODUCAO AND SOBRA=@TSOBRA
      
      );


   ------------------------------------------------------------------------
   -- 
   ------------------------------------------------------------------------

IF (@TSOBRA IN ('S','SIM'))
BEGIN
   DELETE FROM PCP_ORDEMPRODUCAOFASEREFERENCIAS
   WHERE 
      EMPRESA=@NEMPRESA  
   AND 
      REFERENCIA=@SREFERENCIA  
   AND 
      ORDEMPRODUCAO=@NORDEMPRODUCAO 
   
   AND 
      SOBRA='S'
END;      




END


GO
/****** Object:  StoredProcedure [dbo].[SPPCP_FINALIZAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[SPPCP_FINALIZAR]  (
    @NEMPRESA        ICODIGO,
    @NORDEMPRODUCAO  ICODIGO,
    @SREFERENCIA     SCODIGO,
    @SFASE           ICODIGO,
    @SVIA			 SCODIGO
    )
AS
BEGIN

   --IF (@SVIA='') OR (@SVIA='AUTOMATICO')
   IF (@SVIA IN ('','AUTOMATICO') )
   BEGIN
      -- FROM  CAD_FASESGRADE_LISTA

      ------------------------------------------------------------------------
      -- ATUALIZAR TABELA MOVIMENTAÇÃO DE OPM FNC_PCPFASEREFERENCIASFILTRAR ()
      ------------------------------------------------------------------------
      MERGE
         CAD_PRODUTOS_GRADES AS DESTINO
      USING
         (  SELECT
            DISTINCT
            REFERENCIA,
            COR_ID ,
            COR,
            TAMANHO_ID,
            TAMANHO,
            ORDEM_GRADE,
            QTDE_ENVIADA

           FROM FNC_PCPFASEREFERENCIASFILTRAR (@NEMPRESA,@NORDEMPRODUCAO )
           WHERE  REFERENCIA=@SREFERENCIA  ) AS ORIGEM
              ON
         (    DESTINO.REFERENCIA = ORIGEM.REFERENCIA
              AND
              DESTINO.COR_ID = ORIGEM.COR_ID
              AND
              DESTINO.TAMANHO_ID = ORIGEM.TAMANHO_ID
           )

          WHEN NOT MATCHED BY TARGET THEN
                   INSERT (  CODIGO,
                             REFERENCIA,
                             IDENTIFICADOR,
                             COR_ID ,
                             COR,
                             TAMANHO_ID,
                             TAMANHO,
                             ORDEM_GRADE,
                             CELULA_COL,
                             COLUNA_ROW,
                             QUANTIDADE
                           )
                   VALUES (
                            (SELECT CODIGO FROM CAD_PRODUTOS WHERE REFERENCIA=@SREFERENCIA),
                             REFERENCIA,
                             dbo.FNC_IDENTIFICADOR(REFERENCIA,COR_ID, TAMANHO_ID),
                             COR_ID ,
                             COR,
                             TAMANHO_ID,
                             TAMANHO,
                             ORDEM_GRADE,

                             (SELECT TOP 1 CELULA_COL FROM PCP_ORDEMPRODUCAO_ITENS_GRADE WHERE REFERENCIA=ORIGEM.REFERENCIA AND COR_ID=ORIGEM.COR_ID  AND TAMANHO_ID=ORIGEM.TAMANHO_ID ),
                             (SELECT TOP 1 COLUNA_ROW FROM PCP_ORDEMPRODUCAO_ITENS_GRADE WHERE REFERENCIA=ORIGEM.REFERENCIA AND COR_ID=ORIGEM.COR_ID  AND TAMANHO_ID=ORIGEM.TAMANHO_ID ),


                             QTDE_ENVIADA

                           )

      WHEN MATCHED THEN

         UPDATE  SET
            DESTINO.QUANTIDADE=DESTINO.QUANTIDADE+QTDE_ENVIADA

      --WHEN NOT MATCHED BY SOURCE THEN
      --   DELETE

      OUTPUT $ACTION, INSERTED.*,    DELETED.*;


      ------------------------------------------------------------------------
      -- FECHAR -
      ------------------------------------------------------------------------
      UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET QTDE_PRODUZIR=0
      WHERE
         EMPRESA=@NEMPRESA
      AND
         CODIGO=@NORDEMPRODUCAO
      AND
         FASE=@SFASE

      ------------------------------------------------------------------------
      -- FECHAR -
      -- VERIFICAR, SE NÃO FICAR NADA PRA TRAS, FECHAR ANDAMENTO DE PRODUÇÃO
      ------------------------------------------------------------------------

      IF   COALESCE((SELECT SUM(QTDE_PRODUZIR)  FROM  PCP_ORDEMPRODUCAO_ANDAMENTO WHERE EMPRESA=@NEMPRESA AND CODIGO=@NORDEMPRODUCAO ),0)=0
      BEGIN

         UPDATE PCP_ORDEMPRODUCAO SET
         DATAFECHAMENTO=GETDATE(),
                    ENCERRADO='S'
         WHERE
            EMPRESA=@NEMPRESA
         AND
            CODIGO=@NORDEMPRODUCAO
            
      END;
            



   END;  --IF (@SVIA IN ('','AUTOMATICO') )


   ------------------------------------------------------------------------
   -- BAIXAR QUANDO PRODUTOS INFORMADOS FOR POR CODIGO DE BARRAS
   ------------------------------------------------------------------------
   IF (@SVIA IN ('CODIGOBARRAS') )
   BEGIN


      ------------------------------------------------------------------------
      -- FECHAR -
      -- VERIFICAR, SE NÃO FICAR NADA PRA TRAS, FECHAR ANDAMENTO DE PRODUÇÃO
      ------------------------------------------------------------------------

      IF   COALESCE((SELECT SUM(QTDE_PRODUZIR)  FROM  PCP_ORDEMPRODUCAO_ANDAMENTO WHERE EMPRESA=@NEMPRESA AND CODIGO=@NORDEMPRODUCAO ),0)=0
      BEGIN

         UPDATE PCP_ORDEMPRODUCAO SET
         DATAFECHAMENTO=GETDATE(),
                    ENCERRADO='S'
         WHERE
            EMPRESA=@NEMPRESA
         AND
            CODIGO=@NORDEMPRODUCAO
            
      END;

   END;  --IF (@SVIA IN ('','CODIGOBARRAS') )



   ------------------------------------------------------------------------
   -- SOMATORIOS -
   ------------------------------------------------------------------------
   /*
      UPDATE PCP_ORDEMPRODUCAO SET
         QTDE_PRODUZIDA=COALESCE( (SELECT SUM(QTDE_ENVIADA) FROM FNC_PCPFASEREFERENCIASFILTRAR (@NEMPRESA,@NORDEMPRODUCAO ) WHERE REFERENCIA=@SREFERENCIA ),0)
      WHERE
         EMPRESA=@NEMPRESA
      AND
         CODIGO=@NORDEMPRODUCAO
    */ 


      ------------------------------------------------------------------------
      -- SOMATORIOS -
      ------------------------------------------------------------------------
      UPDATE PCP_ORDEMPRODUCAO SET
         QTDE_RESTANTE=COALESCE( QTDE_TOTAL,0) - COALESCE( QTDE_PRODUZIDA,0)
      WHERE
         EMPRESA=@NEMPRESA
      AND
         CODIGO=@NORDEMPRODUCAO


      ------------------------------------------------------------------------
      -- SOMATORIOS -
      ------------------------------------------------------------------------
      UPDATE PCP_ORDEMPRODUCAO SET
         PERCENTUAL=((QTDE_PRODUZIDA/QTDE_TOTAL)*100)
      WHERE
         EMPRESA=@NEMPRESA
      AND
         CODIGO=@NORDEMPRODUCAO


   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS -
   ------------------------------------------------------------------------

   UPDATE CAD_PRODUTOS SET
      ESTOQUESALDO=COALESCE( (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE   CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA AND COR_ID>0 AND TAMANHO_ID>0 ),0)
   WHERE
      CAD_PRODUTOS.EMPRESA=@NEMPRESA
   AND
      CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA



   ------------------------------------------------------------------------
   -- NAO PERMITIR NEGATIVOS OU NULOS
   ------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS SET
      ESTOQUESALDO=0
   WHERE
      (ESTOQUESALDO<0) OR (ESTOQUESALDO IS NULL )

   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA -
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADES.COR_ID,
                                        CAD_PRODUTOS_GRADES.TAMANHO_ID
                                        )



END


GO
/****** Object:  StoredProcedure [dbo].[SPPCP_ORDEMPRODUCAOFASEREFERENCIAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE  [dbo].[SPPCP_ORDEMPRODUCAOFASEREFERENCIAS]  (
    @NEMPRESA        INTEGER,
    @NORDEMPRODUCAO  INTEGER,
    @NFASE           INTEGER,
    @SREFERENCIA     VARCHAR(30)
    )
AS
BEGIN

   DELETE FROM PCP_ORDEMPRODUCAOFASEREFERENCIAS
   WHERE 
      EMPRESA=@NEMPRESA  
   AND 
      REFERENCIA=@SREFERENCIA  
   AND 
      ORDEMPRODUCAO=@NORDEMPRODUCAO 
   
   AND 
      SOBRA='N';
   
   ------------------------------------------------------------------------
   -- ATUALIZAR TABELA MOVIMENTAÇÃO DE OPM (VIEW_PCPFASEREFERENCIASALDOS)
   ------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM PCP_ORDEMPRODUCAOFASEREFERENCIAS WHERE EMPRESA=@NEMPRESA AND ORDEMPRODUCAO=@NORDEMPRODUCAO AND COALESCE(SOBRA,'N')='S' )
BEGIN 
                
    INSERT INTO PCP_ORDEMPRODUCAOFASEREFERENCIAS(
    	            EMPRESA,
    	            ORDEMPRODUCAO,
    	            FASE,
    	            TERCEIRIZADO,
    	            REFERENCIA,
    	            DESCRICAO,
    	            COR_ID ,
    	            COR,
    	            TAMANHO_ID,
    	            TAMANHO,
    	            ORDEM_GRADE,
    	            QTDE_ENVIAR,
    	            SOBRA )  
           (  
        SELECT
          DISTINCT
          EMPRESA,
          CODIGO,
          @NFASE,
          0,
          REFERENCIA,
          coalesce((SELECT CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.EMPRESA=@NEMPRESA AND CAD_PRODUTOS.REFERENCIA=@SREFERENCIA ),''),
          COR_ID ,
          COR,
          TAMANHO_ID,
          TAMANHO,
          ORDEM_GRADE,
          QTDE_RESTANTEENVIAR,
          'S'

         FROM FNC_PCPFASEREFERENCIASFILTRAR (@NEMPRESA,@NORDEMPRODUCAO )
                                                                               
           WHERE REFERENCIA=@SREFERENCIA AND QTDE_RESTANTEENVIAR>0 
      
      );

END

   ------------------------------------------------------------------------
   -- RESTANTE POR FASE (FASES QUE JA RECEBERAM O PRODUTO)
   ------------------------------------------------------------------------

    INSERT INTO PCP_ORDEMPRODUCAOFASEREFERENCIAS(
    	            EMPRESA,
    	            ORDEMPRODUCAO,
    	            FASE,
    	            TERCEIRIZADO,
    	            REFERENCIA,
    	            DESCRICAO,
    	            COR_ID ,
    	            COR,
    	            TAMANHO_ID,
    	            TAMANHO,
    	            ORDEM_GRADE,
    	            QTDE_ENVIAR,
    	            SOBRA )  
           (  
        SELECT
          DISTINCT
          EMPRESA,
          CODIGO,
          FASE,
          TERCEIRIZADO,
          REFERENCIA,
          coalesce((SELECT CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.EMPRESA=@NEMPRESA AND CAD_PRODUTOS.REFERENCIA=@SREFERENCIA ),''),
          COR_ID ,
          COR,
          TAMANHO_ID,
          TAMANHO,
          ORDEM_GRADE,
          QTDE_ENVIADA,
          'N'

         FROM FNC_PCPFASEREFERENCIASFILTRAR (@NEMPRESA,@NORDEMPRODUCAO )
         WHERE REFERENCIA=@SREFERENCIA AND QTDE_ENVIADA>0 

         --FROM VIEW_PCPFASEREFERENCIA
         --WHERE EMPRESA=@NEMPRESA  AND REFERENCIA=@SREFERENCIA AND CODIGO=@NORDEMPRODUCAO   AND QTDE_ENVIADA>0  AND COR_ID>0   AND TAMANHO_ID>0
      
      );



END


GO
/****** Object:  StoredProcedure [dbo].[SPPCP_PEDIDOLANCAGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPPCP_PEDIDOLANCAGRADE]  (
    @NEMPRESA        ICODIGO,
    @NPEDIDO         ICODIGO,
    @SIDENTIFICADOR  SCODIGO,
    @NQUANTIDADE     IQUANTIDADE,
    @NVALOR_UNIT     VALOR,

    @ACAO VARCHAR(10)
    )
as
begin

 DECLARE    @SAPROVADO         SCODIGO='S';
 DECLARE    @NORDEMPRODUCAO    ICODIGO;
 DECLARE    @SDATA             SDATE;
 DECLARE    @NCLIENTE          ICODIGO;
 DECLARE    @NVENDEDOR         ICODIGO;
 DECLARE    @NTABELA           ICODIGO;
 DECLARE    @NFORMAPAGTO       ICODIGO;
 DECLARE    @NTRANSPORTADORA   ICODIGO;
 DECLARE    @STIPO             SCODIGO;
 DECLARE    @SPRODUZINDO       BOOLEAN;
 DECLARE    @SSELECIONADO      BOOLEAN;


 DECLARE   @SREFERENCIA        SCODIGO;
 DECLARE   @SDESCRICAO         SNOME;
 DECLARE   @SUNIDADE		   SCODIGO;
 DECLARE   @NGRADE_ID          ICODIGO;
 DECLARE   @SCELULA            SCODIGO;
 DECLARE   @NCOR_ID            ICODIGO;
 DECLARE   @SCOR               SCODIGO;
 DECLARE   @NTAMANHO_ID        ICODIGO;
 DECLARE   @STAMANHO           SCODIGO;
 DECLARE   @SORDEM_GRADE       SCODIGO;
 DECLARE   @NCELULA_COL        ICODIGO;
 DECLARE   @NCOLUNA_ROW        ICODIGO;

 SET   @SREFERENCIA      =(SELECT REFERENCIA        FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @SDESCRICAO       =(SELECT DESCRICAO         FROM CAD_PRODUTOS           WHERE EMPRESA=@NEMPRESA AND REFERENCIA=@SREFERENCIA );
 SET   @SUNIDADE         =(SELECT UNIDADE           FROM CAD_PRODUTOS           WHERE EMPRESA=@NEMPRESA AND REFERENCIA=@SREFERENCIA );

 SET   @SAPROVADO        =(SELECT APROVADO          FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
 SET   @NORDEMPRODUCAO   =(SELECT ORDEMPRODUCAO     FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
 SET   @NGRADE_ID        =(SELECT GRADE_ID          FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @SCELULA          =('');
 SET   @NCOR_ID          =(SELECT  COR_CODIGO       FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @SCOR             =(SELECT  cor              FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @NTAMANHO_ID      =(SELECT  TAMANHO_CODIGO   FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @STAMANHO         =(SELECT  TAMANHO          FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @SORDEM_GRADE     =(SELECT  TAMANHO_ORDEM    FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @NCELULA_COL      =(0);
 SET   @NCOLUNA_ROW      =(0);


SET    @SDATA             =(SELECT DATA             FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @NCLIENTE          =(SELECT CLIENTE          FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @NVENDEDOR         =(SELECT VENDEDOR         FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @NTABELA           =(SELECT TABELA           FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @NFORMAPAGTO       =(SELECT FORMAPAGTO       FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @NTRANSPORTADORA   =(SELECT TRANSPORTADORA   FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @STIPO             =(SELECT TIPO             FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @SAPROVADO         =(SELECT APROVADO         FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @NORDEMPRODUCAO    =(SELECT ORDEMPRODUCAO    FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @SPRODUZINDO       =(SELECT PRODUZINDO       FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );
SET    @SSELECIONADO      =(SELECT SELECIONADO      FROM PEDIDOS                WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO );

IF (@NVALOR_UNIT=0)
   SET   @NVALOR_UNIT     =(SELECT PRC_VENDA        FROM CAD_PRODUTOS           WHERE EMPRESA=@NEMPRESA AND REFERENCIA=@SREFERENCIA );

IF (@NTABELA>0)
   SET   @NVALOR_UNIT     =(SELECT PRC_VENDA        FROM TPRECO_REFERENCIAS     WHERE CODIGO=@NTABELA AND REFERENCIA=@SREFERENCIA );


   IF (@ACAO='INCLUIR')
   BEGIN
      
      

      IF NOT EXISTS (SELECT * FROM PEDIDOS_ITENS WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO AND REFERENCIA=@SREFERENCIA)
      BEGIN
          INSERT INTO PEDIDOS_ITENS (
                 EMPRESA,
                 CODIGO,
                 DATA,
                 CLIENTE,
                 VENDEDOR,
                 TABELA,
                 FORMAPAGTO,
                 TRANSPORTADORA,
                 TIPO,
                 APROVADO,
                 ORDEMPRODUCAO,
                 PRODUZINDO,
                 SELECIONADO,
                 REFERENCIA,
                 DESCRICAO,
                 UND,
                 QTDE,
                 VLR_UNIT,
                 VLR_TOTAL
                 )
             VALUES
                 (
                 @NEMPRESA,
                 @NPEDIDO,
                 @SDATA,
                 @NCLIENTE,
                 @NVENDEDOR,
                 @NTABELA,
                 @NFORMAPAGTO,
                 @NTRANSPORTADORA,
                 @STIPO,
                 @SAPROVADO,
                 @NORDEMPRODUCAO,
                 @SPRODUZINDO,
                 @SSELECIONADO,

                 @SREFERENCIA,
                 @SDESCRICAO,
                 @SUNIDADE,
                 0,
                 @NVALOR_UNIT,
                 0
             );

      END
      ELSE
      BEGIN
         UPDATE PEDIDOS_ITENS SET VLR_UNIT=@NVALOR_UNIT
         WHERE
            EMPRESA=@NEMPRESA
         AND
            CODIGO=@NPEDIDO
         AND
            REFERENCIA=@SREFERENCIA;      
      END;


      IF NOT EXISTS (SELECT * FROM PEDIDOS_ITENS_GRADE WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO AND IDENTIFICADOR=@SIDENTIFICADOR)
      BEGIN

             INSERT INTO PEDIDOS_ITENS_GRADE (
                 EMPRESA,
                 CODIGO,
                 REFERENCIA,
                 APROVADO,
                 ORDEMPRODUCAO,
                 IDENTIFICADOR,
                 GRADE_ID,
                 CELULA,
                 COR_ID,
                 COR,
                 TAMANHO_ID,
                 TAMANHO,
                 ORDEM_GRADE,
                 CELULA_COL,
                 COLUNA_ROW,
                 QUANTIDADE,
                 VALOR_UNIT
                 )
             VALUES
                 (
                 @NEMPRESA,
                 @NPEDIDO,
                 @SREFERENCIA,
                 @SAPROVADO,
                 @NORDEMPRODUCAO,
                 @SIDENTIFICADOR,
                 @NGRADE_ID,
                 @SCELULA,
                 @NCOR_ID,
                 @SCOR,
                 @NTAMANHO_ID,
                 @STAMANHO,
                 @SORDEM_GRADE,
                 @NCELULA_COL,
                 @NCOLUNA_ROW,
                 @NQUANTIDADE,
                 @NVALOR_UNIT
             );

      END
      ELSE
      BEGIN
         UPDATE PEDIDOS_ITENS_GRADE SET QUANTIDADE=QUANTIDADE+@NQUANTIDADE
         WHERE
            EMPRESA=@NEMPRESA
         AND
            CODIGO=@NPEDIDO
         AND
            IDENTIFICADOR=@SIDENTIFICADOR;      

      END;


   END; --IF (@ACAO='INCLUIR')


   IF (@ACAO='DIMINUIR')
   BEGIN
         UPDATE PEDIDOS_ITENS_GRADE SET QUANTIDADE=QUANTIDADE-@NQUANTIDADE
         WHERE
            EMPRESA=@NEMPRESA
         AND
            CODIGO=@NPEDIDO
         AND
            IDENTIFICADOR=@SIDENTIFICADOR;      


         UPDATE PEDIDOS_ITENS_GRADE SET QUANTIDADE=0
         WHERE
            QUANTIDADE<0;      


   END; --IF (@ACAO='DIMINUIR')





End


GO
/****** Object:  StoredProcedure [dbo].[SPPEDIDO_MATERIAPRIMAIMPORTAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPPEDIDO_MATERIAPRIMAIMPORTAR]  (
    @ACAO varchar(20))
as
begin

   RETURN; --
    
   /*
   
   ------------------------------------------------------------------------
   -- "INSERT" SIGNIFICA QUE ...
   ---
   ------------------------------------------------------------------------
   if (@ACAO='INSERT')
   begin

        
        UPDATE PCP_MATERIAPRIMA_TECIDOS
              set REFERENCIA= COALESCE( ( select CAD_PRODUTOS.REFERENCIA from  CAD_PRODUTOS
                            where
                            CAD_PRODUTOS.CODIGO=PCP_MATERIAPRIMA_TECIDOS.CODIGO
                            ),'***')
        WHERE
           PCP_MATERIAPRIMA_TECIDOS.CODIGO=PCP_MATERIAPRIMA_TECIDOS.CODIGO;
       
      ------------------------------------------------------------------------
      -- mesclar
      ------------------------------------------------------------------------
        Merge
           PEDIDOS_MATERIAPRIMA_TECIDOS as Destino
        Using
           (Select DISTINCT *  From PCP_MATERIAPRIMA_TECIDOS) as Origem
        On
           (Destino.REFERENCIA = Origem.REFERENCIA)
        When Not Matched By Target Then
                 Insert (
                         REFERENCIA 
                         ,DESCRICAO
                         ,UNIDADE
                         ,ESTOQUESALDO
                         ,CONSUMO
                         ,QTDEBAIXAR
                         ,SELECIONADO
                        )
                 Values (
                         REFERENCIA
                         ,coalesce( (select CAD_PRODUTOS.DESCRICAOREDUZIDA FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=ORIGEM.REFERENCIA  ), (select CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=ORIGEM.REFERENCIA  )    )
                         ,'M'
                         ,coalesce( (select CAD_PRODUTOS.ESTOQUESALDO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=ORIGEM.REFERENCIA  ), 0  )  
                         ,QTDE_METROS
                         ,0
                         ,'N'

                 )
                 
                 
         --When Matched Then
         ---     Update  set Destino.ESTOQUESALDO=coalesce( (select CAD_PRODUTOS.ESTOQUESALDO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=Destino.PRODUTO  ), 0  )  
               

        When Not Matched By Source Then
           Delete
        Output
           $action, inserted.*,    deleted.*;
      ------------------------------------------------------------------------
      -- mesclar / FIM
      ------------------------------------------------------------------------


        UPDATE PEDIDOS_MATERIAPRIMA_TECIDOS set ESTOQUESALDO=0
        WHERE
           (ESTOQUESALDO is null) OR (ESTOQUESALDO < 1);   
           
           
           
        
        UPDATE PEDIDOS_MATERIAPRIMA_TECIDOS
              set ESTOQUESALDO= COALESCE( ( select CAD_PRODUTOS.ESTOQUESALDO from  CAD_PRODUTOS
                            where
                            CAD_PRODUTOS.REFERENCIA=PEDIDOS_MATERIAPRIMA_TECIDOS.PRODUTO
                            ),0)
        WHERE
           PEDIDOS_MATERIAPRIMA_TECIDOS.PRODUTO=PEDIDOS_MATERIAPRIMA_TECIDOS.PRODUTO;
             
     
   end -- (@ACAO='INSERT')
   */
   
end


GO
/****** Object:  StoredProcedure [dbo].[SPPEDIDOCOMPRA_CALCULAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPPEDIDOCOMPRA_CALCULAR] (
    @EMPRESA integer,
    @CODIGO integer)
as
begin

  
  update COMPRA_PEDIDOS_ITENS set QTDE_PEDIDA=0
  where
     QTDE_PEDIDA is null;

  update COMPRA_PEDIDOS_ITENS set VALOR_UNIT=0
  where
     VALOR_UNIT is null;

  update COMPRA_PEDIDOS_ITENS set VALOR_TOTAL=0
  where
     VALOR_TOTAL is null;

  update COMPRA_PEDIDOS_ITENS set DESCONTO=0
  where
     DESCONTO is null;

  update COMPRA_PEDIDOS_ITENS set VLR_DESCONTO=0
  where
     VLR_DESCONTO is null;


  /* calcular itens do pedido -- */
  update COMPRA_PEDIDOS_ITENS set
    VALOR_TOTAL          = coalesce(QTDE_PEDIDA,0) * coalesce(VALOR_UNIT,0) --,
  where
    EMPRESA=@EMPRESA
  AND
    CODIGO=@CODIGO;
  
  update COMPRA_PEDIDOS_ITENS set
    VLR_DESCONTO         = coalesce(VALOR_TOTAL,0) * (coalesce(DESCONTO,0) / 100)
  where
    EMPRESA=@EMPRESA
  AND
    CODIGO=@CODIGO;


  /* calcular descontos do pedido -- */
  update COMPRA_PEDIDOS_ITENS set
     VALOR_TOTAL          = VALOR_TOTAL - VLR_DESCONTO
  where
    EMPRESA=@EMPRESA
  AND
    CODIGO=@CODIGO;

  update COMPRA_PEDIDOS set VLR_TOTAL=0
  where
     VLR_TOTAL is null;


  /* somar total do pedido */
  update COMPRA_PEDIDOS  set
     /* QUANTIDADE TOTAL DE PRODUTOS */
     COMPRA_PEDIDOS.QTDE_PEDIDA   = (select sum(COMPRA_PEDIDOS_ITENS.QTDE_PEDIDA)         from  COMPRA_PEDIDOS_ITENS where  COMPRA_PEDIDOS_ITENS.CODIGO=@CODIGO),
     /* VALOR TOTAL DOS PRODUTOS */
     COMPRA_PEDIDOS.VLR_TOTAL    = (select sum(COMPRA_PEDIDOS_ITENS.VALOR_TOTAL)          from  COMPRA_PEDIDOS_ITENS where  COMPRA_PEDIDOS_ITENS.CODIGO=@CODIGO )
  where
    EMPRESA=@EMPRESA
  AND
    CODIGO=@CODIGO;
    


end


GO
/****** Object:  StoredProcedure [dbo].[SPPEDIDOS_CALCULA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPPEDIDOS_CALCULA] (
    @NEMPRESA integer,
    @CODIGO integer)
as
begin

   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------
   UPDATE PEDIDOS_ITENS SET 
      QTDE=COALESCE( (SELECT SUM(PEDIDOS_ITENS_GRADE.QUANTIDADE) FROM PEDIDOS_ITENS_GRADE WHERE  PEDIDOS_ITENS_GRADE.CODIGO=PEDIDOS_ITENS.CODIGO AND PEDIDOS_ITENS_GRADE.REFERENCIA=PEDIDOS_ITENS.REFERENCIA  ),0)
   WHERE
      PEDIDOS_ITENS.EMPRESA=@NEMPRESA
   AND
      PEDIDOS_ITENS.CODIGO=@CODIGO
   AND
      PEDIDOS_ITENS.REFERENCIA=PEDIDOS_ITENS.REFERENCIA



  /* VALOR ITENS GRADE PCP_DISTRIBUIR_RGRADE_REMESSA  */
  update PEDIDOS_ITENS_GRADE  set PEDIDOS_ITENS_GRADE.VALOR_UNIT=(SELECT top 1 PEDIDOS_ITENS.VLR_UNIT FROM PEDIDOS_ITENS WHERE PEDIDOS_ITENS.EMPRESA=@NEMPRESA AND PEDIDOS_ITENS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO )
  where 
  EMPRESA=@NEMPRESA
  AND
  CODIGO=@CODIGO;

  /* SE HOUVER TABELA DE PREÇOS */
  
  if (SELECT PEDIDOS.TABELA FROM PEDIDOS WHERE EMPRESA=@NEMPRESA AND  CODIGO=@CODIGO)>0
  begin
    Update PEDIDOS_ITENS_GRADE  set PEDIDOS_ITENS_GRADE.VALOR_UNIT=COALESCE(TPRECO_REFERENCIAS_GRADES.PRC_VENDA,0)
    FROM PEDIDOS_ITENS_GRADE
    INNER JOIN PEDIDOS                        ON     PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA
                                              AND    PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO
    INNER JOIN TPRECO_REFERENCIAS_GRADES      ON     TPRECO_REFERENCIAS_GRADES.CODIGO=PEDIDOS.TABELA
    WHERE
    TPRECO_REFERENCIAS_GRADES.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA
    AND
    TPRECO_REFERENCIAS_GRADES.COR=PEDIDOS_ITENS_GRADE.COR
    AND
    TPRECO_REFERENCIAS_GRADES.TAMANHO=PEDIDOS_ITENS_GRADE.TAMANHO
    AND
    PEDIDOS.EMPRESA=@NEMPRESA
    AND
    PEDIDOS.CODIGO=@CODIGO;
  End;
  
  
  
  if (SELECT PEDIDOS.TABELA FROM PEDIDOS WHERE  EMPRESA=@NEMPRESA AND CODIGO=@CODIGO)<=0
  begin
     /* calcular itens do pedido -- */
     update PEDIDOS_ITENS set
        VLR_TOTAL            = QTDE * VLR_UNIT
     where
        CODIGO=@CODIGO;

     update PEDIDOS_ITENS set
        PEDIDOS_ITENS.VLR_DESCONTO         = PEDIDOS_ITENS.VLR_TOTAL * (PEDIDOS_ITENS.DESCONTO / 100)
     where
        EMPRESA=@NEMPRESA 
     and   
        PEDIDOS_ITENS.CODIGO=@CODIGO;

  end;
  
  if (SELECT PEDIDOS.TABELA FROM PEDIDOS WHERE  EMPRESA=@NEMPRESA AND CODIGO=@CODIGO)>0
  begin
     /* calcular itens do pedido -- */
    /* 
     update PEDIDOS_ITENS set
        VLR_TOTAL            = QTDE * COALESCE( ( SELECT  SUM(PEDIDOS_ITENS_GRADE.VALOR_UNIT) FROM PEDIDOS_ITENS_GRADE WHERE PEDIDOS_ITENS_GRADE.PEDIDO=@CODIGO AND PEDIDOS_ITENS_GRADE.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA ),0),
        VLR_DESCONTO         = VLR_TOTAL * (DESCONTO / 100)
     where
        CODIGO=@CODIGO;
    */
    
     /* calcular itens do pedido -- */
     update PEDIDOS_ITENS set
        VLR_TOTAL            = QTDE * VLR_UNIT
     where
        CODIGO=@CODIGO;

     update PEDIDOS_ITENS set
        PEDIDOS_ITENS.VLR_DESCONTO         = PEDIDOS_ITENS.VLR_TOTAL * (PEDIDOS_ITENS.DESCONTO / 100)
     where
        EMPRESA=@NEMPRESA 
     and   
        PEDIDOS_ITENS.CODIGO=@CODIGO;
    
    
  end;



  /* calcular descontos do pedido -- */
  update PEDIDOS_ITENS set
     PEDIDOS_ITENS.VLR_TOTAL          = PEDIDOS_ITENS.VLR_TOTAL          - PEDIDOS_ITENS.VLR_DESCONTO
  where
     EMPRESA=@NEMPRESA
  and   
     PEDIDOS_ITENS.CODIGO=@CODIGO;

  update PEDIDOS set VLR_DESCONTO=0
  where
     VLR_DESCONTO is null;

  update PEDIDOS set DESCONTO=0
  where
     DESCONTO is null;


  update PEDIDOS set VLR_TOTAL=0
  where
     VLR_TOTAL is null;



  /* somar total do pedido */
  update PEDIDOS  set
     /* QUANTIDADE TOTAL DE PRODUTOS */
     PEDIDOS.QTDE_PRODUTOS   = (select sum(PEDIDOS_ITENS.QTDE)         from  PEDIDOS_ITENS where  EMPRESA=@NEMPRESA and PEDIDOS_ITENS.CODIGO=@CODIGO),

     /* QUANTIDADE TOTAL DE SERVIÇOS */
     PEDIDOS.QTDE_SERVICOS   = (select sum(PEDIDOS_ITENS.QTDE)         from  PEDIDOS_ITENS where  EMPRESA=@NEMPRESA and  PEDIDOS_ITENS.CODIGO=@CODIGO),

     /* QUANTIDADE TOTAL DE PRODUTOS E SERVICOS */
     PEDIDOS.QTDE_TOTAL      = (select sum(PEDIDOS_ITENS.QTDE)         from  PEDIDOS_ITENS where  EMPRESA=@NEMPRESA and  PEDIDOS_ITENS.CODIGO=@CODIGO ),

     /* VALOR TOTAL DOS PRODUTOS */
     --PEDIDOS.VLR_PRODUTOS    = (select sum(PEDIDOS_ITENS.VLR_TOTAL)     from  PEDIDOS_ITENS where  PEDIDOS_ITENS.CODIGO=@CODIGO ),
     PEDIDOS.VLR_PRODUTOS    = (select sum(PEDIDOS_ITENS.QTDE * PEDIDOS_ITENS.VLR_UNIT)     from  PEDIDOS_ITENS where  EMPRESA=@NEMPRESA and  PEDIDOS_ITENS.CODIGO=@CODIGO ),



     /* VALOR TOTAL DOS SERVIÇOS */
     PEDIDOS.VLR_SERVICOS    = (select sum(PEDIDOS_ITENS.VLR_TOTAL)     from  PEDIDOS_ITENS where  EMPRESA=@NEMPRESA and  PEDIDOS_ITENS.CODIGO=@CODIGO),

     /* VALOR TOTAL DOS IMPOSTOS */
     PEDIDOS.VLR_IMPOSTOS    = (select sum(PEDIDOS_ITENS.VLR_IMPOSTOS) from  PEDIDOS_ITENS where   EMPRESA=@NEMPRESA and PEDIDOS_ITENS.CODIGO=@CODIGO ),


     /* VALOR TOTAL DO PEDIDO */
     PEDIDOS.VLR_TOTAL       = (select sum(PEDIDOS_ITENS.VLR_TOTAL)    from  PEDIDOS_ITENS where  EMPRESA=@NEMPRESA and  PEDIDOS_ITENS.CODIGO=@CODIGO )
     


  where
    EMPRESA=@NEMPRESA 
  and 
    CODIGO=@CODIGO;



  update PEDIDOS set VLR_DESCONTO=0
  where
     VLR_DESCONTO is null;

  update PEDIDOS set DESCONTO=0
  where
     DESCONTO is null;


  update PEDIDOS set VLR_TOTAL=0
  where
     VLR_TOTAL is null;


  update PEDIDOS  set
     
     PEDIDOS.VLR_DESCONTO      =   PEDIDOS.VLR_TOTAL * (PEDIDOS.DESCONTO / 100)
     --PEDIDOS.VLR_DESCONTO      =   coalesce(PEDIDOS.VLR_TOTAL,0)  * ( coalesce(PEDIDOS.DESCONTO,0)  / 100) 
  where
    EMPRESA=@NEMPRESA 
  and 
    CODIGO=@CODIGO;

  
  update PEDIDOS  set
     PEDIDOS.VLR_TOTAL    = coalesce(PEDIDOS.VLR_TOTAL,0) - coalesce(PEDIDOS.VLR_DESCONTO,0)
  where
    CODIGO=@CODIGO;

end


GO
/****** Object:  StoredProcedure [dbo].[SPPROD_DEFINIRIDENTIFICADOR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPPROD_DEFINIRIDENTIFICADOR]
as
begin

   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA  NA TABELA CAD_PRODUTOS_GRADES-
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR='***'
   WHERE
   GRADE_ID IS NULL

   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADES.COR_ID,
                                        CAD_PRODUTOS_GRADES.TAMANHO_ID
                                        )                                       
   WHERE
      COR_ID>0
   AND
      TAMANHO_ID>0;

   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA NA TABELA CAD_PRODUTOS_GRADESQUALIDADES
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADESQUALIDADES SET
   IDENTIFICADOR='***'
   WHERE
   GRADE_ID IS NULL;

   UPDATE  CAD_PRODUTOS_GRADESQUALIDADES SET
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADESQUALIDADES.COR_ID,
                                        CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID
                                        )                                        
   WHERE
      COR_ID>0
   AND
      TAMANHO_ID>0

      

End


GO
/****** Object:  StoredProcedure [dbo].[SPPRODUTOS_QTDE_STATUS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPPRODUTOS_QTDE_STATUS] (
    @TREFERENCIA varchar(30),
    @TCOR varchar(30),
    @TTAMANHO varchar(30))
as
begin

   ----------------------------------------------------------------------------
   ----- QUANTIDADE A PRODUZIR
   ----------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS_MOVIMENTACAO
   set QTDE_PRODUZIR=( select sum(QUANTIDADE)
                    from  pcp_ordemproducao_produzir
                    where
                       REFERENCIA        =@TREFERENCIA
                    and
                       COR               =@TCOR
                    and
                       TAMANHO           =@TTAMANHO
                    
                    and 
                      PEDIDO           =CAD_PRODUTOS_MOVIMENTACAO.PEDIDO
                      )
   where
      REFERENCIA        =@TREFERENCIA
   and
      COR               =@TCOR
   and
      TAMANHO           =@TTAMANHO


   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_PRODUZIR=0
   where
     QTDE_PRODUZIR is null;



   ----------------------------------------------------------------------------
   -- QUANTIDADE PRODUZIDA
   ----------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS_MOVIMENTACAO   
   set QTDE_PRODUZIDO=( select sum(QUANTIDADE)
                    from  PCP_ORDEMPRODUCAO_PRODUZIDOS
                    where
                       REFERENCIA        =@TREFERENCIA
                    and
                       COR               =@TCOR
                    and
                       TAMANHO           =@TTAMANHO
                   
                    and 
                      PEDIDO           =CAD_PRODUTOS_MOVIMENTACAO.PEDIDO
                      )
   where
      REFERENCIA        =@TREFERENCIA
   and
      COR               =@TCOR
   and
      TAMANHO           =@TTAMANHO;


   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_PRODUZIDO=0
   where
     QTDE_PRODUZIDO is null;

   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set VALOR_UNIT=0
   where
     VALOR_UNIT is null;

   

   ----------------------------------------------------------------------------
   -- QUANTIDADE EM ESTOQUE
   ----------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS_MOVIMENTACAO   
   set QTDE_ESTOQUE=( select sum(QUANTIDADE)
                    from  PCP_ORDEMPRODUCAO_PRODUZIDOS
                    where
                       REFERENCIA        =@TREFERENCIA
                    and
                       COR               =@TCOR
                    and
                       TAMANHO           =@TTAMANHO
                   
                    and 
                      PEDIDO           =CAD_PRODUTOS_MOVIMENTACAO.PEDIDO
                      )
   where
      REFERENCIA        =@TREFERENCIA
   and
      COR               =@TCOR
   and
      TAMANHO           =@TTAMANHO;


   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_ESTOQUE=0
   where
     QTDE_ESTOQUE is null;


   ----------------------------------------------------------------------------
   -- QUANTIDADE RESTANTE A PRODUZIR E COMPLETAR A META DA OP(LOTE)EM PROCESSO DE PRODUÇÃO
   ----------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS_MOVIMENTACAO
   set QTDE_PRODUZINDO  = QTDE_PRODUZIR - QTDE_PRODUZIDO;

   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_PRODUZINDO=0
   where
     QTDE_PRODUZINDO is null ;


   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_ESTOQUE=0
   where
     QTDE_ESTOQUE is null;


   ----------------------------------------------------------------------------
   -- ITENS VENDIDOS@ PEDIDO DE VENDA
   -- QUANTIDADE REFERENCIAS (COR/TAMANHO) VENDIDAS
   ----------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS_MOVIMENTACAO
   set QTDE_VENDIDO=( select sum(QUANTIDADE)  from  PEDIDOS_ITENS_GRADE
                    where
                       REFERENCIA        =@TREFERENCIA
                    and
                       COR               =@TCOR
                    and
                       TAMANHO           =@TTAMANHO
                    and
                       APROVADO          ='S'
                    and 
                      PEDIDO           =CAD_PRODUTOS_MOVIMENTACAO.PEDIDO
                    
                    )
                                       
   where
      REFERENCIA        =@TREFERENCIA
   and
      COR               =@TCOR
   and
      TAMANHO           =@TTAMANHO;

   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_VENDIDO=0
   where
     QTDE_VENDIDO is null;

   -- --------------------------------------------------------------------------
   -- ESTOQUE REAL - ESTOQUE - PEDIDOS DE VENDAS APROVADOS
   -- --------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_ESTOQUEREAL=QTDE_ESTOQUE-QTDE_VENDIDO;
   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_ESTOQUEREAL=0
   where
     QTDE_ESTOQUEREAL is null;


   ----------------------------------------------------------------------------
   -- QUANTIDADE A PRODUZIR PARA ATENDER DEMANDA
   ----------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS_MOVIMENTACAO
   set QTDE_PRODUZIR_DEMANDA  = ( COALESCE( QTDE_ESTOQUE,0) + COALESCE( QTDE_PRODUZINDO,0) - COALESCE( QTDE_VENDIDO,0)  );


   UPDATE CAD_PRODUTOS_MOVIMENTACAO  set QTDE_PRODUZIR_DEMANDA=0
   where
     QTDE_PRODUZIR_DEMANDA is null;


   --exec SPOP_CAD_PRODUTOSGRADE @TREFERENCIA;

end


GO
/****** Object:  StoredProcedure [dbo].[SPREL_NECESSIDADEPRODUCAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[SPREL_NECESSIDADEPRODUCAO]    Script Date: 03/21/2012 02:27:42 ******/


CREATE PROCEDURE [dbo].[SPREL_NECESSIDADEPRODUCAO](
    @NEMPRESA			ICODIGO,
    @DATA_INI    		SDATE,
    @DATA_FIM  		    SDATE
  )

AS
BEGIN

   ------------------------------------------------------------------------
   --
   ------------------------------------------------------------------------
    DELETE FROM TBL_NECESSIDADES;
    
    INSERT INTO TBL_NECESSIDADES(
						EMPRESA				 ,
						REFERENCIA			 ,
						DESCRICAO            ,
						COLECAO              ,
						COLECAO_NOME         ,
						COR_ID				 ,
						COR					 ,
						TAMANHO_ID			 ,
						TAMANHO				 ,
						ORDEM_GRADE			 ,
						QTDE_FISICO          ,
						QTDE_VENDIDO		 ,
						QTDE_ENTREGUE        ,
						QTDE_PENDENTE        ,
						QTDE_PRODUZIR        ,
						QTDE_PRODUZIDO       ,
						QTDE_PRODUZINDO		 ,
						QTDE_DEMANDA		 ,
						QTDE_EXCEDENTE       )

           (
            ----------------------------------------------------------------------------
            --- INICIO DA INSTRUÇÃO SELECT
            ----------------------------------------------------------------------------

            SELECT

            --DISTINCT
            EMPRESA,
            REFERENCIA,
            DESCRICAO,
            COLECAO,
            COLECAO_NOME,
            COR_ID,
            COR,
            TAMANHO_ID,
            TAMANHO,
            ORDEM_GRADE,
            0, --QTDE_FISICO,
            0, --SUM(QUANTIDADE), --QTDE_VENDIDO,
            0,
            0, --QTDE_PENDENTE,
            0,
            0,
            0, --QTDE_PRODUZINDO,
            0, --QTDE_DEMANDA,
            0 --QTDE_EXCEDENTE
            FROM VIEW_NECESSIDADEPRODUCAO
            WHERE
               EMPRESA=@NEMPRESA
            AND
               DATAENTREGA BETWEEN @DATA_INI AND @DATA_FIM  
               
   
             
            GROUP BY
            EMPRESA,
            REFERENCIA,
            DESCRICAO,
            COLECAO,
            COLECAO_NOME,            
            COR_ID,
            COR,
            TAMANHO_ID,
            TAMANHO,
            ORDEM_GRADE
            
               );

   ------------------------------------------------------------------------
   -- DELETAR REGISTROS DUPLICADOS
   ------------------------------------------------------------------------
   SELECT REFERENCIA, COR_ID, TAMANHO_ID FROM TBL_NECESSIDADES;

   With Dups as
   (Select REFERENCIA, COR_ID, TAMANHO_ID, Row_Number() over (partition by REFERENCIA, COR_ID, TAMANHO_ID order By REFERENCIA, COR_ID, TAMANHO_ID) as RowNum
   from TBL_NECESSIDADES )
   Delete from Dups where rownum > 1;


   ------------------------------------------------------------------------
   -- ATUALIZAR CAMPOS
   ------------------------------------------------------------------------
   UPDATE TBL_NECESSIDADES SET QTDE_FISICO=0
   WHERE
      (QTDE_FISICO is null) or (QTDE_FISICO<0);
      
   UPDATE TBL_NECESSIDADES SET QTDE_PRODUZIR=0
   WHERE
      (QTDE_PRODUZIR is null) or (QTDE_PRODUZIR<0);
      
   UPDATE TBL_NECESSIDADES SET QTDE_PENDENTE=0
   WHERE
      (QTDE_PENDENTE is null) or (QTDE_PENDENTE<0);
      


 -- ****************************************************************************
 -- BUSCAR INFORMAÇÕES
 -- ****************************************************************************

   UPDATE TBL_NECESSIDADES SET  QTDE_FISICO=COALESCE(
                         (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES
                          WHERE
                          CAD_PRODUTOS_GRADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADES.COR_ID=TBL_NECESSIDADES.COR_ID
                          AND
                          CAD_PRODUTOS_GRADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                         ) ,0)
                         
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID;
 
 
   ------------------------------------------------------------------------
   -- DESCONTAR OUTRAS QUALIDADES
   ------------------------------------------------------------------------
   UPDATE TBL_NECESSIDADES SET  QTDE_FISICO=QTDE_FISICO - COALESCE(
                         (SELECT SUM(CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADESQUALIDADES
                          WHERE
                          CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADESQUALIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
                          AND
                          CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                         ) ,0)
                         
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID;
 
 

   UPDATE TBL_NECESSIDADES SET  QTDE_VENDIDO=COALESCE(
                         (SELECT SUM(VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA) FROM VIEW_PEDIDO_QTDERESTANTE
                          WHERE
                          VIEW_PEDIDO_QTDERESTANTE.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.COR_ID=TBL_NECESSIDADES.COR_ID
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                          AND
                          EMPRESA=@NEMPRESA
                          AND
                          DATAENTREGA BETWEEN @DATA_INI AND @DATA_FIM
                         
                         ) ,0)
                         
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID


 

   UPDATE TBL_NECESSIDADES SET  QTDE_ENTREGUE=COALESCE(
                         (SELECT SUM(VIEW_PEDIDO_QTDERESTANTE.QTDEFATURADA) FROM VIEW_PEDIDO_QTDERESTANTE
                          WHERE
                          VIEW_PEDIDO_QTDERESTANTE.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.COR_ID=TBL_NECESSIDADES.COR_ID
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                          AND
                          EMPRESA=@NEMPRESA
                          AND
                          DATAENTREGA BETWEEN @DATA_INI AND @DATA_FIM  
                          
                         ) ,0)
                         
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
 

 
  UPDATE TBL_NECESSIDADES SET  QTDE_PENDENTE=QTDE_VENDIDO-QTDE_ENTREGUE;
 
 

 UPDATE TBL_NECESSIDADES SET QTDE_PRODUZIR=0;

 UPDATE TBL_NECESSIDADES SET  QTDE_PRODUZIR=coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=TBL_NECESSIDADES.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=TBL_NECESSIDADES.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S' 
                                                                     AND
                                                                       COALESCE( (SELECT ENCERRADO FROM PCP_ORDEMPRODUCAO WHERE CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO ),'N')='N'
                                                                       ) ,0)
                                                                       
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID;
                                                                        

 UPDATE TBL_NECESSIDADES SET QTDE_PRODUZIDO=0;

 UPDATE TBL_NECESSIDADES SET  QTDE_PRODUZIDO=coalesce(( SELECT SUM(QTDE_PRODUZIDA) AS QTDE_PRODUZIDA FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=TBL_NECESSIDADES.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=TBL_NECESSIDADES.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S' 
                                                                     AND
                                                                       COALESCE( (SELECT ENCERRADO FROM PCP_ORDEMPRODUCAO WHERE CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO ),'N')='N'
                                                                       ) ,0)
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID;



                                                                     

 -- ****************************************************************************
 -- FAZER CALCULOS
 -- ****************************************************************************

 ------------------------------------------------------------------------------
 -- CAMPO QTDE_PRODUZINDO
 -------------------------------------------------------------------------------
 UPDATE TBL_NECESSIDADES SET QTDE_PRODUZINDO=0;

 UPDATE TBL_NECESSIDADES SET  QTDE_PRODUZINDO=QTDE_PRODUZIR;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_PRODUZINDO=QTDE_PRODUZINDO-QTDE_PRODUZIDO;
 

 ------------------------------------------------------------------------------
 -- CAMPO NECESSIDADE
 -------------------------------------------------------------------------------

 UPDATE TBL_NECESSIDADES SET QTDE_DEMANDA=0;
  
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA =  QTDE_FISICO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA = QTDE_DEMANDA + QTDE_PRODUZINDO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA = QTDE_DEMANDA - QTDE_PENDENTE;
 
 UPDATE TBL_NECESSIDADES SET QTDE_DEMANDA=0    WHERE       QTDE_DEMANDA>0;

 ------------------------------------------------------------------------------
 -- CAMPO QTDE_EXCEDENTE
 -------------------------------------------------------------------------------

 UPDATE TBL_NECESSIDADES SET QTDE_EXCEDENTE=0;


 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE =  QTDE_FISICO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE = QTDE_EXCEDENTE + QTDE_PRODUZINDO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE = QTDE_EXCEDENTE - QTDE_PENDENTE;

 UPDATE TBL_NECESSIDADES SET QTDE_EXCEDENTE=0    WHERE     QTDE_EXCEDENTE<0;



   ------------------------------------------------------------------------
   -- NA PERMITIR VALORES POSITIVOS NA COLUNA QTDE_DEMANDA
   ------------------------------------------------------------------------

   UPDATE TBL_NECESSIDADES SET QTDE_FISICO=0
   WHERE
      (QTDE_FISICO is null) or (QTDE_FISICO<0);
      
   UPDATE TBL_NECESSIDADES SET QTDE_PRODUZIR=0
   WHERE
      (QTDE_PRODUZIR is null) or (QTDE_PRODUZIR<0);
      
   UPDATE TBL_NECESSIDADES SET QTDE_PENDENTE=0
   WHERE
      (QTDE_PENDENTE is null) or (QTDE_PENDENTE<0);
  
 
 
 
   UPDATE TBL_NECESSIDADES SET QTDE_FISICO=0
   WHERE
      QTDE_FISICO<0

 

 ------------------------------------------------------------------------------
 -- CAMPO NECESSIDADE
 -------------------------------------------------------------------------------

 UPDATE TBL_NECESSIDADES SET QTDE_DEMANDA=0;
  
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA =  QTDE_FISICO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA = QTDE_DEMANDA + QTDE_PRODUZINDO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA = QTDE_DEMANDA - QTDE_PENDENTE;
 
 UPDATE TBL_NECESSIDADES SET QTDE_DEMANDA=0    WHERE       QTDE_DEMANDA>0;

 ------------------------------------------------------------------------------
 -- CAMPO QTDE_EXCEDENTE
 -------------------------------------------------------------------------------

 UPDATE TBL_NECESSIDADES SET QTDE_EXCEDENTE=0;


 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE =  QTDE_FISICO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE = QTDE_EXCEDENTE + QTDE_PRODUZINDO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE = QTDE_EXCEDENTE - QTDE_PENDENTE;

 UPDATE TBL_NECESSIDADES SET QTDE_EXCEDENTE=0    WHERE     QTDE_EXCEDENTE<0;

 
 


END;


GO
/****** Object:  StoredProcedure [dbo].[SPREL_NECESSIDADEPRODUCAOESTOQUE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPREL_NECESSIDADEPRODUCAOESTOQUE](
    @NEMPRESA			ICODIGO,
    @DATA_INI    		SDATE,
    @DATA_FIM  		    SDATE
  )

AS
BEGIN

   ------------------------------------------------------------------------
   --
   ------------------------------------------------------------------------
    DELETE FROM TBL_NECESSIDADES;
    
    INSERT INTO TBL_NECESSIDADES(
						EMPRESA				 ,
						REFERENCIA			 ,
						DESCRICAO            ,
                        COLECAO,
                        COLECAO_NOME,            
						COR_ID				 ,
						COR					 ,
						TAMANHO_ID			 ,
						TAMANHO				 ,
						ORDEM_GRADE			 ,
						QTDE_FISICO          ,
						QTDE_VENDIDO		 ,
						QTDE_ENTREGUE        ,
						QTDE_PENDENTE        ,
						QTDE_PRODUZIR        ,
						QTDE_PRODUZIDO       ,
						QTDE_PRODUZINDO		 ,
						QTDE_DEMANDA		 ,
						QTDE_EXCEDENTE       )

           (
            ----------------------------------------------------------------------------
            --- INICIO DA INSTRUÇÃO SELECT
            ----------------------------------------------------------------------------

            SELECT

            --DISTINCT
            EMPRESA,
            REFERENCIA,
            DESCRICAO,
            COLECAO,
            COLECAO_NOME,            
            COR_ID,
            COR,
            TAMANHO_ID,
            TAMANHO,
            ORDEM_GRADE,
            0, --QTDE_FISICO,
            0, --SUM(QUANTIDADE), --QTDE_VENDIDO,
            0,
            0, --QTDE_PENDENTE,
            0,
            0,
            0, --QTDE_PRODUZINDO,
            0, --QTDE_DEMANDA,
            0 --QTDE_EXCEDENTE
            FROM VIEW_NECESSIDADEPRODUCAOESTOQUE
            WHERE
               EMPRESA=@NEMPRESA
            --AND
            --   DATAENTREGA BETWEEN @DATA_INI AND @DATA_FIM  
               
   
            GROUP BY
            EMPRESA,
            REFERENCIA,
            DESCRICAO,
            COLECAO,
            COLECAO_NOME,            
            COR_ID,
            COR,
            TAMANHO_ID,
            TAMANHO,
            ORDEM_GRADE
               );

   ------------------------------------------------------------------------
   -- DELETAR REGISTROS DUPLICADOS
   ------------------------------------------------------------------------
   SELECT REFERENCIA, COR_ID, TAMANHO_ID FROM TBL_NECESSIDADES;

   With Dups as
   (Select REFERENCIA, COR_ID, TAMANHO_ID, Row_Number() over (partition by REFERENCIA, COR_ID, TAMANHO_ID order By REFERENCIA, COR_ID, TAMANHO_ID) as RowNum
   from TBL_NECESSIDADES )
   Delete from Dups where rownum > 1;


   ------------------------------------------------------------------------
   -- ATUALIZAR CAMPOS
   ------------------------------------------------------------------------
   UPDATE TBL_NECESSIDADES SET QTDE_FISICO=0
   WHERE
      (QTDE_FISICO is null) or (QTDE_FISICO<0);
      
   UPDATE TBL_NECESSIDADES SET QTDE_PRODUZIR=0
   WHERE
      (QTDE_PRODUZIR is null) or (QTDE_PRODUZIR<0);
      
   UPDATE TBL_NECESSIDADES SET QTDE_PENDENTE=0
   WHERE
      (QTDE_PENDENTE is null) or (QTDE_PENDENTE<0);
      


 -- ****************************************************************************
 -- BUSCAR INFORMAÇÕES
 -- ****************************************************************************

   UPDATE TBL_NECESSIDADES SET  QTDE_FISICO=COALESCE(
                         (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES
                          WHERE
                          CAD_PRODUTOS_GRADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADES.COR_ID=TBL_NECESSIDADES.COR_ID
                          AND
                          CAD_PRODUTOS_GRADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                         ) ,0)
                         
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID;
 
 
   ------------------------------------------------------------------------
   -- DESCONTAR OUTRAS QUALIDADES
   ------------------------------------------------------------------------
   UPDATE TBL_NECESSIDADES SET  QTDE_FISICO=QTDE_FISICO - COALESCE(
                         (SELECT SUM(CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADESQUALIDADES
                          WHERE
                          CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADESQUALIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
                          AND
                          CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                         ) ,0)
                         
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID;
 
 

   UPDATE TBL_NECESSIDADES SET  QTDE_VENDIDO=COALESCE(
                         (SELECT SUM(VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA) FROM VIEW_PEDIDO_QTDERESTANTE
                          WHERE
                          VIEW_PEDIDO_QTDERESTANTE.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.COR_ID=TBL_NECESSIDADES.COR_ID
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                          AND
                          EMPRESA=@NEMPRESA
                          AND
                          DATAENTREGA BETWEEN @DATA_INI AND @DATA_FIM
                         
                         ) ,0)
                         
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID


 

   UPDATE TBL_NECESSIDADES SET  QTDE_ENTREGUE=COALESCE(
                         (SELECT SUM(VIEW_PEDIDO_QTDERESTANTE.QTDEFATURADA) FROM VIEW_PEDIDO_QTDERESTANTE
                          WHERE
                          VIEW_PEDIDO_QTDERESTANTE.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.COR_ID=TBL_NECESSIDADES.COR_ID
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                          AND
                          EMPRESA=@NEMPRESA
                          AND
                          DATAENTREGA BETWEEN @DATA_INI AND @DATA_FIM  
                         ) ,0)
                         
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
 

 
  UPDATE TBL_NECESSIDADES SET  QTDE_PENDENTE=QTDE_VENDIDO-QTDE_ENTREGUE;
 
 

 UPDATE TBL_NECESSIDADES SET QTDE_PRODUZIR=0;

 UPDATE TBL_NECESSIDADES SET  QTDE_PRODUZIR=coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=TBL_NECESSIDADES.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=TBL_NECESSIDADES.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S' 
                                                                     AND
                                                                       COALESCE( (SELECT ENCERRADO FROM PCP_ORDEMPRODUCAO WHERE CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO ),'N')='N'
                                                                       ) ,0)
                                                                       
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID;
                                                                        

 UPDATE TBL_NECESSIDADES SET QTDE_PRODUZIDO=0;

 UPDATE TBL_NECESSIDADES SET  QTDE_PRODUZIDO=coalesce(( SELECT SUM(QTDE_PRODUZIDA) AS QTDE_PRODUZIDA FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=TBL_NECESSIDADES.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=TBL_NECESSIDADES.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S' 
                                                                     AND
                                                                       COALESCE( (SELECT ENCERRADO FROM PCP_ORDEMPRODUCAO WHERE CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO ),'N')='N'
                                                                       ) ,0)
 WHERE
 TBL_NECESSIDADES.REFERENCIA=TBL_NECESSIDADES.REFERENCIA
 AND
 TBL_NECESSIDADES.COR_ID=TBL_NECESSIDADES.COR_ID
 AND
 TBL_NECESSIDADES.TAMANHO_ID=TBL_NECESSIDADES.TAMANHO_ID;



                                                                     

 -- ****************************************************************************
 -- FAZER CALCULOS
 -- ****************************************************************************

 ------------------------------------------------------------------------------
 -- CAMPO QTDE_PRODUZINDO
 -------------------------------------------------------------------------------
 UPDATE TBL_NECESSIDADES SET QTDE_PRODUZINDO=0;

 UPDATE TBL_NECESSIDADES SET  QTDE_PRODUZINDO=QTDE_PRODUZIR;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_PRODUZINDO=QTDE_PRODUZINDO-QTDE_PRODUZIDO;
 

 ------------------------------------------------------------------------------
 -- CAMPO NECESSIDADE
 -------------------------------------------------------------------------------

 UPDATE TBL_NECESSIDADES SET QTDE_DEMANDA=0;
  
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA =  QTDE_FISICO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA = QTDE_DEMANDA + QTDE_PRODUZINDO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA = QTDE_DEMANDA - QTDE_PENDENTE;
 
 UPDATE TBL_NECESSIDADES SET QTDE_DEMANDA=0    WHERE       QTDE_DEMANDA>0;

 ------------------------------------------------------------------------------
 -- CAMPO QTDE_EXCEDENTE
 -------------------------------------------------------------------------------

 UPDATE TBL_NECESSIDADES SET QTDE_EXCEDENTE=0;


 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE =  QTDE_FISICO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE = QTDE_EXCEDENTE + QTDE_PRODUZINDO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE = QTDE_EXCEDENTE - QTDE_PENDENTE;

 UPDATE TBL_NECESSIDADES SET QTDE_EXCEDENTE=0    WHERE     QTDE_EXCEDENTE<0;



   ------------------------------------------------------------------------
   -- NA PERMITIR VALORES POSITIVOS NA COLUNA QTDE_DEMANDA
   ------------------------------------------------------------------------

   UPDATE TBL_NECESSIDADES SET QTDE_FISICO=0
   WHERE
      (QTDE_FISICO is null) or (QTDE_FISICO<0);
      
   UPDATE TBL_NECESSIDADES SET QTDE_PRODUZIR=0
   WHERE
      (QTDE_PRODUZIR is null) or (QTDE_PRODUZIR<0);
      
   UPDATE TBL_NECESSIDADES SET QTDE_PENDENTE=0
   WHERE
      (QTDE_PENDENTE is null) or (QTDE_PENDENTE<0);
  
 
 
 
   UPDATE TBL_NECESSIDADES SET QTDE_FISICO=0
   WHERE
      QTDE_FISICO<0

 

 ------------------------------------------------------------------------------
 -- CAMPO NECESSIDADE
 -------------------------------------------------------------------------------

 UPDATE TBL_NECESSIDADES SET QTDE_DEMANDA=0;
  
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA =  QTDE_FISICO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA = QTDE_DEMANDA + QTDE_PRODUZINDO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_DEMANDA = QTDE_DEMANDA - QTDE_PENDENTE;
 
 UPDATE TBL_NECESSIDADES SET QTDE_DEMANDA=0    WHERE       QTDE_DEMANDA>0;

 ------------------------------------------------------------------------------
 -- CAMPO QTDE_EXCEDENTE
 -------------------------------------------------------------------------------

 UPDATE TBL_NECESSIDADES SET QTDE_EXCEDENTE=0;


 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE =  QTDE_FISICO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE = QTDE_EXCEDENTE + QTDE_PRODUZINDO;
 
 UPDATE TBL_NECESSIDADES SET  QTDE_EXCEDENTE = QTDE_EXCEDENTE - QTDE_PENDENTE;

 UPDATE TBL_NECESSIDADES SET QTDE_EXCEDENTE=0    WHERE     QTDE_EXCEDENTE<0;

 
 


END;


GO
/****** Object:  StoredProcedure [dbo].[SPSPPRODUTOS_LANCAGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPSPPRODUTOS_LANCAGRADE]  (
    @NEMPRESA        ICODIGO,
    @SIDENTIFICADOR  SCODIGO,
    @NQUANTIDADE	 IQUANTIDADE,
    @ACAO            SCODIGO,
    @NQUALIDADE      ICODIGO
    )
as
begin


 DECLARE   @SREFERENCIA        SCODIGO;
 DECLARE   @SDESCRICAO         SNOME;
 DECLARE   @SUNIDADE		   SCODIGO;
 DECLARE   @NGRADE_ID          ICODIGO;
 DECLARE   @SCELULA            SCODIGO;
 DECLARE   @NCOR_ID            ICODIGO;
 DECLARE   @SCOR               SCODIGO;
 DECLARE   @NTAMANHO_ID        ICODIGO;
 DECLARE   @STAMANHO           SCODIGO;
 DECLARE   @SORDEM_GRADE       SCODIGO;
 DECLARE   @NCELULA_COL        ICODIGO;
 DECLARE   @NCOLUNA_ROW        ICODIGO;

 SET   @SREFERENCIA      =(SELECT REFERENCIA        FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @SDESCRICAO       =(SELECT DESCRICAO         FROM CAD_PRODUTOS           WHERE EMPRESA=@NEMPRESA AND REFERENCIA=@SREFERENCIA );
 SET   @SUNIDADE         =(SELECT UNIDADE           FROM CAD_PRODUTOS           WHERE EMPRESA=@NEMPRESA AND REFERENCIA=@SREFERENCIA );

 SET   @NGRADE_ID        =(SELECT GRADE_ID          FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @SCELULA          =('');
 SET   @NCOR_ID          =(SELECT  COR_CODIGO       FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @SCOR             =(SELECT  cor              FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @NTAMANHO_ID      =(SELECT  TAMANHO_CODIGO   FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @STAMANHO         =(SELECT  TAMANHO          FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @SORDEM_GRADE     =(SELECT  TAMANHO_ORDEM    FROM VIEW_GRADEREFERENCIA   WHERE IDENTIFICADOR=@SIDENTIFICADOR );
 SET   @NCELULA_COL      =(0);
 SET   @NCOLUNA_ROW      =(0);

  IF  @NQUANTIDADE IS NULL
     SET @NQUANTIDADE=0;
  

   IF (@ACAO='INCLUIR')
   BEGIN

      IF NOT EXISTS (SELECT * FROM CAD_PRODUTOS_GRADES WHERE IDENTIFICADOR=@SIDENTIFICADOR)
      BEGIN

             INSERT INTO CAD_PRODUTOS_GRADES (
                 REFERENCIA,
                 IDENTIFICADOR,
                 GRADE_ID,
                 CELULA,
                 COR_ID,
                 COR,
                 TAMANHO_ID,
                 TAMANHO,
                 ORDEM_GRADE,
                 CELULA_COL,
                 COLUNA_ROW,
                 QUANTIDADE,
                 QUANTIDADEINVENTARIO,
                 DATAINVENTARIO,
                 ULTIMAATUALIZACAO
                 
                 )
             VALUES
                 (
                 @SREFERENCIA,
                 @SIDENTIFICADOR,
                 @NGRADE_ID,
                 @SCELULA,
                 @NCOR_ID,
                 @SCOR,
                 @NTAMANHO_ID,
                 @STAMANHO,
                 @SORDEM_GRADE,
                 @NCELULA_COL,
                 @NCOLUNA_ROW,
                 @NQUANTIDADE,
                 @NQUANTIDADE,
                 GETDATE(),
                 GETDATE()
             );

      END
      ELSE
      BEGIN
         
         IF    (COALESCE( (SELECT PRODUTO_QUALIDADEPADRAO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA ),0)=@NQUALIDADE)  
            --OR (COALESCE( (SELECT PRODUTO_QUALIDADEPADRAO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA ),0)=0)   
         BEGIN
            
         -----------------------------------------------------------------------------------------

            UPDATE CAD_PRODUTOS_GRADES SET CAD_PRODUTOS_GRADES.QUANTIDADE= COALESCE(CAD_PRODUTOS_GRADES.QUANTIDADE,0) + @NQUANTIDADE
            
            WHERE
               REFERENCIA=@SREFERENCIA
            AND
               IDENTIFICADOR=@SIDENTIFICADOR; 
         
         -----------------------------------------------------------------------------------------

            UPDATE CAD_PRODUTOS_GRADES SET CAD_PRODUTOS_GRADES.QUANTIDADEINVENTARIO=COALESCE(CAD_PRODUTOS_GRADES.QUANTIDADEINVENTARIO,0) + @NQUANTIDADE
            
            WHERE
               REFERENCIA=@SREFERENCIA
            AND
               IDENTIFICADOR=@SIDENTIFICADOR; 
         
         -----------------------------------------------------------------------------------------
         
            UPDATE CAD_PRODUTOS_GRADES SET CAD_PRODUTOS_GRADES.ULTIMAATUALIZACAO=GETDATE()
         
            WHERE
               REFERENCIA=@SREFERENCIA
            AND
               IDENTIFICADOR=@SIDENTIFICADOR; 
      
         -----------------------------------------------------------------------------------------
         
            UPDATE CAD_PRODUTOS_GRADES SET CAD_PRODUTOS_GRADES.DATAINVENTARIO=GETDATE()
         
            WHERE
               REFERENCIA=@SREFERENCIA
            AND
               IDENTIFICADOR=@SIDENTIFICADOR; 
         
         END;   
         
         --



      END;

     -- CONTROLE DE QUALIDADE
     
      IF NOT EXISTS (SELECT * FROM CAD_PRODUTOS_GRADESQUALIDADES WHERE IDENTIFICADOR=@SIDENTIFICADOR AND QUALIDADE=@NQUALIDADE)
                    AND COALESCE( (SELECT PRODUTO_QUALIDADEPADRAO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA ),0)<>@NQUALIDADE       
      BEGIN
       
             INSERT INTO CAD_PRODUTOS_GRADESQUALIDADES (
                 REFERENCIA,
                 IDENTIFICADOR,
                 QUALIDADE,
                 GRADE_ID,
                 CELULA,
                 COR_ID,
                 COR,
                 TAMANHO_ID,
                 TAMANHO,
                 ORDEM_GRADE,
                 CELULA_COL,
                 COLUNA_ROW,
                 QUANTIDADE,
                 QUANTIDADEINVENTARIO,
                 DATAINVENTARIO,
                 ULTIMAATUALIZACAO
                 )
             VALUES
                 (
                 @SREFERENCIA,
                 @SIDENTIFICADOR,
                 @NQUALIDADE,
                 @NGRADE_ID,
                 @SCELULA,
                 @NCOR_ID,
                 @SCOR,
                 @NTAMANHO_ID,
                 @STAMANHO,
                 @SORDEM_GRADE,
                 @NCELULA_COL,
                 @NCOLUNA_ROW,
                 @NQUANTIDADE,
                 @NQUANTIDADE,
                 GETDATE(),
                 GETDATE()
                 
             );

      END
      ELSE
      BEGIN
         IF  (COALESCE( (SELECT PRODUTO_QUALIDADEPADRAO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA ),0)<>@NQUALIDADE)  
            OR (COALESCE( (SELECT PRODUTO_QUALIDADEPADRAO FROM CONFIG_PARAMETROS WHERE EMPRESA=@NEMPRESA ),0)>0)   
         BEGIN

         -----------------------------------------------------------------------------------------

            UPDATE CAD_PRODUTOS_GRADESQUALIDADES SET CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE= COALESCE(CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADE,0) + @NQUANTIDADE
            
            WHERE
               REFERENCIA=@SREFERENCIA
            AND
               IDENTIFICADOR=@SIDENTIFICADOR; 
         
         -----------------------------------------------------------------------------------------

            UPDATE CAD_PRODUTOS_GRADESQUALIDADES SET CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADEINVENTARIO=COALESCE(CAD_PRODUTOS_GRADESQUALIDADES.QUANTIDADEINVENTARIO,0) + @NQUANTIDADE
            
            WHERE
               REFERENCIA=@SREFERENCIA
            AND
               IDENTIFICADOR=@SIDENTIFICADOR; 
         
         -----------------------------------------------------------------------------------------
         
            UPDATE CAD_PRODUTOS_GRADESQUALIDADES SET CAD_PRODUTOS_GRADESQUALIDADES.ULTIMAATUALIZACAO=GETDATE()
         
            WHERE
               REFERENCIA=@SREFERENCIA
            AND
               IDENTIFICADOR=@SIDENTIFICADOR; 
      
         -----------------------------------------------------------------------------------------
         
            UPDATE CAD_PRODUTOS_GRADESQUALIDADES SET CAD_PRODUTOS_GRADESQUALIDADES.DATAINVENTARIO=GETDATE()
         
            WHERE
               REFERENCIA=@SREFERENCIA
            AND
               IDENTIFICADOR=@SIDENTIFICADOR; 
         
         END;   
         
         --

        
         
         
          

      END;
     


   END; --IF (@ACAO='INCLUIR')


   IF (@ACAO='DIMINUIR')
   BEGIN
      UPDATE CAD_PRODUTOS_GRADES SET QUANTIDADE=QUANTIDADE-@NQUANTIDADE
      WHERE
         REFERENCIA=@SREFERENCIA
      AND
         IDENTIFICADOR=@SIDENTIFICADOR;      
         
   END; --IF (@ACAO='DIMINUIR')

   
   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS SET 
      ESTOQUESALDO=COALESCE( (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE   CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA AND COR_ID>0 AND TAMANHO_ID>0 ),0)
   WHERE
      CAD_PRODUTOS.EMPRESA=@NEMPRESA
   AND
      CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA


   UPDATE CAD_PRODUTOS_GRADES SET QUANTIDADE=0
   WHERE
      (QUANTIDADE<0) or (QUANTIDADE is null);    
        

   UPDATE CAD_PRODUTOS_GRADES SET QUANTIDADEINVENTARIO=0
   WHERE
      (QUANTIDADEINVENTARIO<0) or (QUANTIDADEINVENTARIO is null);  
          

   UPDATE CAD_PRODUTOS_GRADES SET ULTIMAATUALIZACAO=GETDATE()
   WHERE
       (ULTIMAATUALIZACAO is null);  

   UPDATE CAD_PRODUTOS_GRADES SET DATAINVENTARIO=GETDATE()
   WHERE
      (DATAINVENTARIO is null);  
 
 
End


GO
/****** Object:  StoredProcedure [dbo].[SPTOTALIZAREFENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPTOTALIZAREFENCIA] (
    @CODIGO integer)
as

begin

      --  MATERIAS-PRIMAS  * /
      -- Totaliza e salva cada registro da MATERIAS-PRIMAS lançada na referencia
      --  de acordo com CODIGO ativo na tela
     update  PCP_MATERIAPRIMA  set
       VLR_TOTAL=( QTDE * VLR_UNIT )
     where
        CODIGO=@CODIGO;

      --  TECIDOS
     UPDATE  PCP_MATERIAPRIMA_TECIDOS  SET
       VLR_TOTAL=( QTDE_METROS * VLR_UNIT )
     where
        CODIGO=@CODIGO;

      -- após totalizar cada registro da MATERIAS-PRIMAS, somar todas as linhas e
      --  gravar no registro mestre  "CAD_PRODUTOS"

      -- informar o valor total de materias-primas agregadas à Referência
     update  CAD_PRODUTOS  set
       TOTAL_VLRMATPRIMA=coalesce( (select sum(VLR_TOTAL) from PCP_MATERIAPRIMA  where CODIGO=@CODIGO),0)
     where
        CODIGO=@CODIGO
         and
        TIPO_PRODUTO='ACA';


              -- informar o valor total de materias-primas agregadas à Referência
     update  CAD_PRODUTOS  set
       TOTAL_VLRMATPRIMA=TOTAL_VLRMATPRIMA+coalesce( (select sum(VLR_TOTAL) from PCP_MATERIAPRIMA_TECIDOS  where CODIGO=@CODIGO),0)
     where
        CODIGO=@CODIGO
         and
        TIPO_PRODUTO='ACA';

     -- SOMAR A QUANTIDADE TOTAL DE MATERIAS-PRIMAS INFORMADAS


     update  CAD_PRODUTOS  set
       TOTAL_QTDEMATPRIMA=coalesce((select sum(QTDE) from PCP_MATERIAPRIMA where CODIGO=@CODIGO),0)
     where
        CODIGO=@CODIGO
        and
        TIPO_PRODUTO='ACA';

      --  CUSTOS


      -- Totaliza cada CUSTO lançado na referencia
      --  de acordo com CODIGO ativo na tela

      --  PROCESSOS  * /


      -- Totaliza cada PROCESSO lançado na referencia
      --  de acordo com CODIGO ativo na tela

     update  CAD_PRODUTOS  set
       TOTAL_PROCESSO_CUSTOS=coalesce((select sum(CUSTOS) from PCP_PROCESSOS where CODIGO=@CODIGO),0)
     where

        CODIGO=@CODIGO
        and
        TIPO_PRODUTO='ACA';


     -----------------------------------------------------------------------------
     -- Calcula parametros de custos (outras informações de custos que incidem)
     -- sobre o produto final.
     --
     -- Calculos Processados:
     --  - Valor total de materia prima
     --  - Valor total dos custos de processos para produção
     --  - Valor total dos parametros de custos
     -----------------------------------------------------------------------------

     UPDATE  CAD_PRODUTOS  SET
        PRC_CUSTO =  TOTAL_VLRMATPRIMA     +
                     TOTAL_CUSTOS_VALOR    +
                     TOTAL_PROCESSO_CUSTOS +
                     coalesce((select sum(VALOR) from PCP_CUSTOS where CODIGO=@CODIGO),0)
     Where

        CODIGO=@CODIGO
     AND
        TIPO_PRODUTO='ACA';

     -----------------------------------------------------------------------------
     -- Calcula e estipula o preço final (Preço de Venda) com base nas lógicas
     -- dos cálculos acima.
     --
     -- Calculos Processados:
     --
     -----------------------------------------------------------------------------
     -- Calculos Processados:
     -- - IPI
     -- - ICMS
     -- - PIS
     -- - COFINS
     -- - PUBLICIDADE
     -- - INADIMPLENCIA
     -- - ADMINISTRATIVO
     -- - IMPORTACAO
     -- - PERC_FRETE
     -- - IR
     -- - MARKUP
     --
     -----------------------------------------------------------------------------

      -- ZERAR PREÇO DE VENDA

     update  CAD_PRODUTOS  set PRC_VENDA =0
     where

        CODIGO=@CODIGO
        and
        TIPO_PRODUTO='ACA';



     -----------------------------------------------------------------------------
     update  CAD_PRODUTOS  set
        PRC_VENDA =  PRC_CUSTO    +
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_ICMS               from config_parametros ),0) / 100))  ) +   /*  Imposto sobre mercadodiras e serviços      */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_IPI                from config_parametros ),0) / 100))  ) +   /*   Imposto sobre produtos industrializados   */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_PUBLICIDADE        from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_INADIMPLENCIA      from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_ADMINISTRATIVO     from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_FINANCEIRO         from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_PIS                from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_COFINS             from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_IR                 from config_parametros ),0) / 100))  ) +   /*   Imposto de Renda                          */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_OUTROSIMPOSTOS     from config_parametros ),0) / 100))  ) +   /*   Imposto de Renda                          */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_IMPORTACAO         from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_FRETE              from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_MARKUP             from config_parametros ),0) / 100))  ) +   /*                                             */
        ( (PRC_CUSTO * ( coalesce( (select top 1 PRODUTO_MARGEMLUCRO        from config_parametros ),0) / 100))  )     /*   Margem de Lucro                           */
     where
        CODIGO=@CODIGO
     and
        TIPO_PRODUTO='ACA';

end


GO
/****** Object:  StoredProcedure [dbo].[SPTOTALIZAREFENCIA_MARKUP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPTOTALIZAREFENCIA_MARKUP] (
    @CODIGO ICODIGO,
    @NMARKUP ICODIGO
    )
as

begin


     update  CAD_PRODUTOS  set MARKUPID=@NMARKUP
     where
        CODIGO=@CODIGO;



      --  MATERIAS-PRIMAS  * /
      -- Totaliza e salva cada registro da MATERIAS-PRIMAS lançada na referencia
      --  de acordo com CODIGO ativo na tela
     update  PCP_MATERIAPRIMA  set
       VLR_TOTAL=( QTDE * VLR_UNIT )
     where
        CODIGO=@CODIGO;

      --  TECIDOS
     UPDATE  PCP_MATERIAPRIMA_TECIDOS  SET
       VLR_TOTAL=( QTDE_METROS * VLR_UNIT )
     where
        CODIGO=@CODIGO;

      -- após totalizar cada registro da MATERIAS-PRIMAS, somar todas as linhas e
      --  gravar no registro mestre  "CAD_PRODUTOS"

      -- informar o valor total de materias-primas agregadas à Referência
     update  CAD_PRODUTOS  set
       TOTAL_VLRMATPRIMA=coalesce( (select sum(VLR_TOTAL) from PCP_MATERIAPRIMA  where CODIGO=@CODIGO),0)
     where
        CODIGO=@CODIGO
         and
        TIPO_PRODUTO='ACA';


              -- informar o valor total de materias-primas agregadas à Referência
     update  CAD_PRODUTOS  set
       TOTAL_VLRMATPRIMA=TOTAL_VLRMATPRIMA+coalesce( (select sum(VLR_TOTAL) from PCP_MATERIAPRIMA_TECIDOS  where CODIGO=@CODIGO),0)
     where
        CODIGO=@CODIGO
         and
        TIPO_PRODUTO='ACA';

     -- SOMAR A QUANTIDADE TOTAL DE MATERIAS-PRIMAS INFORMADAS


     update  CAD_PRODUTOS  set
       TOTAL_QTDEMATPRIMA=coalesce((select sum(QTDE) from PCP_MATERIAPRIMA where CODIGO=@CODIGO),0)
     where
        CODIGO=@CODIGO
        and
        TIPO_PRODUTO='ACA';

      --  CUSTOS


      -- Totaliza cada CUSTO lançado na referencia
      --  de acordo com CODIGO ativo na tela

      --  PROCESSOS  * /


      -- Totaliza cada PROCESSO lançado na referencia
      --  de acordo com CODIGO ativo na tela

     update  CAD_PRODUTOS  set
       TOTAL_PROCESSO_CUSTOS=coalesce((select sum(CUSTOS) from PCP_PROCESSOS where CODIGO=@CODIGO),0)
     where

        CODIGO=@CODIGO
        and
        TIPO_PRODUTO='ACA';


     -----------------------------------------------------------------------------
     -- Calcula parametros de custos (outras informações de custos que incidem)
     -- sobre o produto final.
     --
     -- Calculos Processados:
     --  - Valor total de materia prima
     --  - Valor total dos custos de processos para produção
     --  - Valor total dos parametros de custos
     -----------------------------------------------------------------------------

     UPDATE  CAD_PRODUTOS  SET
        PRC_CUSTO =  TOTAL_VLRMATPRIMA     +
                     TOTAL_CUSTOS_VALOR    +
                     TOTAL_PROCESSO_CUSTOS +
                     coalesce((select sum(VALOR) from PCP_CUSTOS where CODIGO=@CODIGO),0)
     Where

        CODIGO=@CODIGO
     AND
        TIPO_PRODUTO='ACA';

     -----------------------------------------------------------------------------
     -- Calcula e estipula o preço final (Preço de Venda) com base nas lógicas
     -- dos cálculos acima.
     --
     -- Calculos Processados:
     --
     -----------------------------------------------------------------------------
     -- Calculos Processados:
     -- - IPI
     -- - ICMS
     -- - PIS
     -- - COFINS
     -- - PUBLICIDADE
     -- - INADIMPLENCIA
     -- - ADMINISTRATIVO
     -- - IMPORTACAO
     -- - PERC_FRETE
     -- - IR
     -- - MARKUP
     --
     -----------------------------------------------------------------------------

      -- ZERAR PREÇO DE VENDA

     update  CAD_PRODUTOS  set PRC_VENDA =0
     where
        CODIGO=@CODIGO;
        
      
      
    IF  EXISTS((SELECT  CODIGO FROM CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP))
    BEGIN
        
        
        -----------------------------------------------------------------------------
        update  CAD_PRODUTOS  set
           PRC_VENDA =  PRC_CUSTO    +
           ( (PRC_CUSTO * ( coalesce( (select  MARKUP               from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*  Imposto sobre mercadodiras e serviços      */
           ( (PRC_CUSTO * ( coalesce( (select  OUTROSIMPOSTOS       from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*   Imposto sobre produtos industrializados   */
           ( (PRC_CUSTO * ( coalesce( (select  ICMS                 from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  IPI                  from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  PUBLICIDADE          from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  INADIMPLENCIA        from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  ADMINISTRATIVO       from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  FINANCEIRO           from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  PIS                  from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*   Imposto de Renda                          */
           ( (PRC_CUSTO * ( coalesce( (select  COFINS               from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*   Imposto de Renda                          */
           ( (PRC_CUSTO * ( coalesce( (select  IR                   from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  IMPORTACAO           from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  FRETE                from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  ) +   /*                                             */
           ( (PRC_CUSTO * ( coalesce( (select  MARGEMLUCRO          from CAD_MARKUP WHERE CAD_MARKUP.CODIGO=@NMARKUP ),0) / 100))  )     /*   Margem de Lucro                           */
        where
           CODIGO=@CODIGO;

    END;




end


GO
/****** Object:  StoredProcedure [dbo].[SPVENDA_PEDIDOAPROVAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPVENDA_PEDIDOAPROVAR]  (
    @NEMPRESA integer,
    @NPEDIDO integer,
    @ACAO VARCHAR(10)
    )
as
begin

   if @ACAO='APROVAR'
   Begin
       UPDATE PEDIDOS  set APROVADO='S'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NPEDIDO;


      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('S','SIM')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (DIMINUIR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE -
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOS_ITENS_GRADE
                                                                              WHERE
                                                                                 PEDIDOS_ITENS_GRADE.EMPRESA=@NEMPRESA
                                                                              AND
                                                                                 PEDIDOS_ITENS_GRADE.CODIGO=@NPEDIDO
                                                                              AND
                                                                                 PEDIDOS_ITENS_GRADE.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOS_ITENS_GRADE.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOS_ITENS_GRADE.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID
                                                                              --AND
                                                                              --   PEDIDOS_ITENS_GRADE.APROVADO='S'

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End;

   End;


   if @ACAO='DESAPROVAR'
   Begin
       UPDATE PEDIDOS  set APROVADO='N'
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NPEDIDO;


      IF  EXISTS((SELECT  PEDIDO_BAIXAESTOQUE FROM CONFIG_PARAMETROS WHERE CONFIG_PARAMETROS.EMPRESA=@NEMPRESA AND CONFIG_PARAMETROS.PEDIDO_BAIXAESTOQUE IN ('S','SIM')))
      Begin
            -- ***************************************************************
            -- ***   ATUALIZA GRADE DE PRODUTOS ACABADOS (AUMENTAR)     ******
            -- ***************************************************************
            UPDATE CAD_PRODUTOS_GRADES   SET CAD_PRODUTOS_GRADES.QUANTIDADE=CAD_PRODUTOS_GRADES.QUANTIDADE +
                                                                             coalesce(( SELECT SUM(QUANTIDADE) AS QTDE_TOTAL FROM PEDIDOS_ITENS_GRADE
                                                                              WHERE
                                                                                 PEDIDOS_ITENS_GRADE.EMPRESA=@NEMPRESA
                                                                              AND
                                                                                 PEDIDOS_ITENS_GRADE.CODIGO=@NPEDIDO
                                                                              AND
                                                                                 PEDIDOS_ITENS_GRADE.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
                                                                              AND
                                                                                 PEDIDOS_ITENS_GRADE.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
                                                                              AND
                                                                                 PEDIDOS_ITENS_GRADE.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID
                                                                              --AND
                                                                              --   PEDIDOS_ITENS_GRADE.APROVADO='N'

                                                                              ),0)
            WHERE
               CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA
            AND
               CAD_PRODUTOS_GRADES.COR_ID=CAD_PRODUTOS_GRADES.COR_ID
            AND
               CAD_PRODUTOS_GRADES.TAMANHO_ID=CAD_PRODUTOS_GRADES.TAMANHO_ID;

      End;
   End;

   ------------------------------------------------------------------------
   -- CALCULAR TOTAL DE PRODUTOS - 
   ------------------------------------------------------------------------
   UPDATE CAD_PRODUTOS SET 
      ESTOQUESALDO=COALESCE( (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE   CAD_PRODUTOS_GRADES.REFERENCIA=CAD_PRODUTOS.REFERENCIA AND COR_ID>0 AND TAMANHO_ID>0 ),0)
   WHERE
      CAD_PRODUTOS.EMPRESA=@NEMPRESA
   AND
      CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS.REFERENCIA


   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA - 
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADES SET 
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADES.COR_ID,
                                        CAD_PRODUTOS_GRADES.TAMANHO_ID
                                        )


   ------------------------------------------------------------------------
   -- ATUALIZAR TABELA MOVIMENTAÇÃO DE PEDIDOS (PEDIDOS_MOVIMENTO)
   ------------------------------------------------------------------------
   Merge
      PEDIDOS_MOVIMENTO as Destino
   Using
      ( Select *  From PEDIDOS_ITENS_GRADE
        WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO AND APROVADO='S' AND COR_ID>0 AND TAMANHO_ID>0 ) as Origem
   On
      (Destino.EMPRESA = Origem.EMPRESA
       AND
       Destino.CODIGO = Origem.CODIGO
       AND
       Destino.REFERENCIA = Origem.REFERENCIA
       AND
       Destino.COR_ID = Origem.COR_ID
       AND
       Destino.TAMANHO_ID = Origem.TAMANHO_ID
        )
         

   When Not Matched By Target Then
            Insert (
                     EMPRESA
                    ,CODIGO
                    ,ORDEMPRODUCAO
                    ,REFERENCIA
                    ,APROVADO
                    ,IDREFERENCIA
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,CELULA_COL
                    ,COLUNA_ROW
                    ,QTDE_PECAS
                    ,QTDE_ENTREGUE
                    ,QTDE_RESTANTE
                    ,VALOR_UNIT

                  )
            Values (
                     EMPRESA
                    ,CODIGO
                    ,0
                    ,REFERENCIA
                    ,APROVADO
                    ,''
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,CELULA_COL
                    ,COLUNA_ROW
                    ,QUANTIDADE
                    ,0             -- ESTA COLUNA SERA ATUALIZADA POR OUTROS COMANDOS
                    ,QUANTIDADE    -- ESTA COLUNA SERA ATUALIZADA POR OUTROS COMANDOS
                    ,VALOR_UNIT

            )


   When Matched Then
      Update  set
         Destino.APROVADO=Origem.APROVADO,
         Destino.QTDE_PECAS=Origem.QUANTIDADE,
         Destino.QTDE_RESTANTE=(Destino.QTDE_PECAS-Destino.QTDE_RESTANTE),
         Destino.VALOR_UNIT=Origem.VALOR_UNIT


   When Not Matched By Source and (Destino.aprovado='N' )  Then
      Delete
      
   Output $action, inserted.*,    deleted.*;


   ------------------------------------------------------------------------
   -- NÃO PERMITIR VALORES NULOS
   ------------------------------------------------------------------------

   UPDATE PEDIDOS_MOVIMENTO set QTDE_PECAS=0
   WHERE
      (QTDE_PECAS is null) OR (QTDE_PECAS < 1);

   UPDATE PEDIDOS_MOVIMENTO set QTDE_ENTREGUE=0
   WHERE
      (QTDE_ENTREGUE is null) OR (QTDE_ENTREGUE < 1);

   UPDATE PEDIDOS_MOVIMENTO set QTDE_RESTANTE=0
   WHERE
      (QTDE_RESTANTE is null) OR (QTDE_RESTANTE < 1);


   ------------------------------------------------------------------------
   -- ATUALIZAR CAMPOS
   ------------------------------------------------------------------------
   UPDATE PEDIDOS_MOVIMENTO set
      EMPRESA      =  ( select PEDIDOS.EMPRESA     from  PEDIDOS where  PEDIDOS.CODIGO=PEDIDOS_MOVIMENTO.CODIGO ),
      DATA         =  ( select PEDIDOS.DATA        from  PEDIDOS where  PEDIDOS.CODIGO=PEDIDOS_MOVIMENTO.CODIGO ),
      CLIENTE      =  ( select PEDIDOS.CLIENTE     from  PEDIDOS where  PEDIDOS.CODIGO=PEDIDOS_MOVIMENTO.CODIGO ),
      VENDEDOR     =  ( select PEDIDOS.VENDEDOR    from  PEDIDOS where  PEDIDOS.CODIGO=PEDIDOS_MOVIMENTO.CODIGO )

   WHERE
      PEDIDOS_MOVIMENTO.EMPRESA=@NEMPRESA
   AND
      PEDIDOS_MOVIMENTO.CODIGO=PEDIDOS_MOVIMENTO.CODIGO;


   ------------------------------------------------------------------------
   -- ATUALIZAR TABELA MOVIMENTAÇÃO DE PRODUTOS (MOVIMENTOS_PRODUTOS)
   ------------------------------------------------------------------------
    INSERT INTO MOVIMENTOS_PRODUTOS(
                     EMPRESA
                    ,APROVADO
                    ,DATAMOVIMENTO
                    ,DATA
                    ,DATAENTREGA
                    ,PEDIDO
                    ,REFERENCIA
                    ,FASEATUAL
                    ,CELULAATUAL
                    ,MAQUINAATUAL
                    ,OPERADORATUAL
                    ,PROCESSOATUAL
                    ,TURNOATUAL
                    ,DEFEITOATUAL
                    ,QUALIDADEATUAL
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,QTDE_VENDIDO
                    ,QTDE_DEMANDA
                    ,QTDE_PRODUZIR
                    ,QTDE_PRODUZIDO
                    ,QTDE_PRODUZINDO
                    ,QTDE_FISICO
                    ,QTDE_ESTOQUE
                    ,QTDE_PERDAS
                    ,QTDE_DEFEITOS                    
    	            )  
           (  
        SELECT
          DISTINCT
                     EMPRESA
                    ,APROVADO
                    ,GETDATE()
                    ,(SELECT DATA            FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_MOVIMENTO.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_MOVIMENTO.CODIGO )
                    ,(SELECT DATA_ENTREGA    FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_MOVIMENTO.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_MOVIMENTO.CODIGO )
                    ,(SELECT CODIGO          FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_MOVIMENTO.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_MOVIMENTO.CODIGO )
                    ,REFERENCIA
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,QTDE_PECAS
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
          
           FROM PEDIDOS_MOVIMENTO

           WHERE EMPRESA=@NEMPRESA AND CODIGO=@NPEDIDO AND APROVADO='S' 
           );
   

   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA  NA TABELA CAD_PRODUTOS_GRADES-
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR='***'
   WHERE
   GRADE_ID IS NULL

   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADES.COR_ID,
                                        CAD_PRODUTOS_GRADES.TAMANHO_ID
                                        )                                       
   WHERE
      COR_ID>0
   AND
      TAMANHO_ID>0;

   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA NA TABELA CAD_PRODUTOS_GRADESQUALIDADES
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADESQUALIDADES SET
   IDENTIFICADOR='***'
   WHERE
   GRADE_ID IS NULL;

   UPDATE  CAD_PRODUTOS_GRADESQUALIDADES SET
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADESQUALIDADES.COR_ID,
                                        CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID
                                        )                                        
   WHERE
      COR_ID>0
   AND
      TAMANHO_ID>0

   
   
End


GO
/****** Object:  StoredProcedure [dbo].[SPVENDA_PEDIDOMOVIMENTAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPVENDA_PEDIDOMOVIMENTAR]  (
    @NEMPRESA integer,
    @NPEDIDO integer
    )
as
begin


   Merge
      MOVIMENTOS_PRODUTOS as Destino
   Using
      ( Select *  
        From PEDIDOS_MOVIMENTO
        WHERE 
        EMPRESA=1 
        AND 
        CODIGO=@NPEDIDO
        AND
        APROVADO='S'  
        
        ) as Origem
   On
      (
       Origem.EMPRESA=Destino.EMPRESA
       AND
       Origem.REFERENCIA=Destino.REFERENCIA
       AND
       Origem.COR_ID=Destino.COR_ID
       AND
       Origem.TAMANHO_ID=Destino.TAMANHO_ID
       
        )

   When Not Matched By Target Then
            Insert (
                     EMPRESA
                    ,APROVADO
                    ,DATAMOVIMENTO
                    ,REFERENCIA
                    ,FASEATUAL
                    ,CELULAATUAL
                    ,MAQUINAATUAL
                    ,OPERADORATUAL
                    ,PROCESSOATUAL
                    ,TURNOATUAL
                    ,DEFEITOATUAL
                    ,QUALIDADEATUAL
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,QTDE_VENDIDO
                    ,QTDE_DEMANDA
                    ,QTDE_PRODUZIR
                    ,QTDE_PRODUZIDO
                    ,QTDE_PRODUZINDO
                    ,QTDE_FISICO
                    ,QTDE_ESTOQUE
                    ,QTDE_PERDAS
                    ,QTDE_DEFEITOS                    
                  )
            Values (
                     EMPRESA
                    ,APROVADO
                    ,GETDATE()
                    ,REFERENCIA
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,COR_ID
                    ,COR
                    ,TAMANHO_ID
                    ,TAMANHO
                    ,ORDEM_GRADE
                    ,QTDE_PECAS
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  
                    ,0  

            )

   When Not Matched By Source    Then
      Delete
      
   Output $action, inserted.*,    deleted.*;
   
   
   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA  NA TABELA CAD_PRODUTOS_GRADES-
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR='***'
   WHERE
   GRADE_ID IS NULL

   UPDATE  CAD_PRODUTOS_GRADES SET
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADES.COR_ID,
                                        CAD_PRODUTOS_GRADES.TAMANHO_ID
                                        )                                       
   WHERE
      COR_ID>0
   AND
      TAMANHO_ID>0;

   ------------------------------------------------------------------------
   -- CRIAR IDENTIFICADOR, CASO NAO EXISTA NA TABELA CAD_PRODUTOS_GRADESQUALIDADES
   ------------------------------------------------------------------------
   UPDATE  CAD_PRODUTOS_GRADESQUALIDADES SET
   IDENTIFICADOR='***'
   WHERE
   GRADE_ID IS NULL;

   UPDATE  CAD_PRODUTOS_GRADESQUALIDADES SET
   IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADESQUALIDADES.COR_ID,
                                        CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID
                                        )                                        
   WHERE
      COR_ID>0
   AND
      TAMANHO_ID>0

   
   
End


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_ACENTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FNC_ACENTOS](@strTexto SNOME)
returns SNOME
AS
BEGIN
   declare @strRemoveAcento SNOME;

   set @strRemoveAcento=@strTexto;
   set @strRemoveAcento = replace(@strRemoveAcento,'á','a')
   set @strRemoveAcento = replace(@strRemoveAcento,'à','a')
   set @strRemoveAcento = replace(@strRemoveAcento,'ã','a')
   set @strRemoveAcento = replace(@strRemoveAcento,'â','a')
   set @strRemoveAcento = replace(@strRemoveAcento,'é','e')
   set @strRemoveAcento = replace(@strRemoveAcento,'è','e')
   set @strRemoveAcento = replace(@strRemoveAcento,'ê','e')
   set @strRemoveAcento = replace(@strRemoveAcento,'í','i')
   set @strRemoveAcento = replace(@strRemoveAcento,'ì','i')
   set @strRemoveAcento = replace(@strRemoveAcento,'î','i')
   set @strRemoveAcento = replace(@strRemoveAcento,'ó','o')
   set @strRemoveAcento = replace(@strRemoveAcento,'ò','o')
   set @strRemoveAcento = replace(@strRemoveAcento,'ô','o')
   set @strRemoveAcento = replace(@strRemoveAcento,'õ','o')
   set @strRemoveAcento = replace(@strRemoveAcento,'ú','u')
   set @strRemoveAcento = replace(@strRemoveAcento,'ù','u')
   set @strRemoveAcento = replace(@strRemoveAcento,'û','u')
   set @strRemoveAcento = replace(@strRemoveAcento,'ü','u')
   set @strRemoveAcento = replace(@strRemoveAcento,'ç','c')

   return (UPPER(@strRemoveAcento))

END


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_ALPHAREMOVE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[FNC_ALPHAREMOVE] (
@strString      snome,
@strnovo        snome

)
returns snome
as
begin
/*
	*****	Takes a string variable and turns it into a set of 
	*****	numbers separated by spaces.

	*****	Despite the name, it also removes punctuation, not
	*****	just letters.

	*****	Input string must be simple ASCII, not Unicode.
	*****	(No accented letters, etc.)
*/
	set @strString=coalesce(@strString,'');
	set @strnovo=coalesce(@strnovo,'');
	
	declare @sub char(1)

--Letters
	while patindex('%[a-z]%', @strString) > 0
	begin
		set @sub = substring(@strString, patindex('%[a-z]%', @strString), 1)
		
		set @strString = replace(@strString, @sub, @strnovo)
	end
	
--Punctuation
	while patindex('%[!-)]%', @strString) > 0
	begin
		set @sub = substring(@strString, patindex('%[!-/]%', @strString), 1)
		
		set @strString = replace(@strString, @sub, @strnovo)
	end
	
	while patindex('%[+-/]%', @strString) > 0
	begin
		set @sub = substring(@strString, patindex('%[!-/]%', @strString), 1)
		
		set @strString = replace(@strString, @sub, @strnovo)
	end
	
	while patindex('%[:-=]%', @strString) > 0
	begin
		set @sub = substring(@strString, patindex('%[:-@]%', @strString), 1)
		
		set @strString = replace(@strString, @sub, @strnovo)
	end

	while patindex('%[?-@]%', @strString) > 0
	begin
		set @sub = substring(@strString, patindex('%[:-@]%', @strString), 1)
		
		set @strString = replace(@strString, @sub, @strnovo)
	end

	set @strString = replace(@strString, '[', @strnovo)
	set @strString = replace(@strString, '-', @strnovo)
	set @strString = replace(@strString, '.', @strnovo)
	set @strString = replace(@strString, '*', @strnovo)
	set @strString = replace(@strString, '+', @strnovo)
	set @strString = replace(@strString, ',', @strnovo)
	set @strString = replace(@strString, '.', @strnovo)

	while patindex('%[\-`]%', @strString) > 0
	begin
		set @sub = substring(@strString, patindex('%[\-`]%', @strString), 1)
		
		set @strString = replace(@strString, @sub, @strnovo)
	end

	while patindex('%[{-~]%', @strString) > 0
	begin
		set @sub = substring(@strString, patindex('%[{-~]%', @strString), 1)
		
		set @strString = replace(@strString, @sub, @strnovo)
	end

	while charindex('  ', @strString, 0) > 0
		set @strString = replace(@strString, '  ', ' ')

return @strString
end


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_FLUXOCAIXA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FNC_FLUXOCAIXA](
    @DATAPARAMETRO date,
    @DATA_LIMITE date,
    @T_CAIXA varchar(10)= 'S',
    @T_BANCARIO varchar(10)= 'S',
    @T_RECEBER varchar(10)= 'S',
    @T_PAGAR varchar(10)= 'S',
    @CONTACAIXA integer = 0 ,
    @PREVISAOGLOBAL varchar(10)= 'S',
    @contacorrente integer = 0

)

RETURNS
    @FluxoCaixa  TABLE(
    VENCIMENTO		date DEFAULT GETDATE(),
    DESCRICAO		varchar(100)  DEFAULT  '',
    SALDOINICIAL    float DEFAULT  0,
    SALDOATUAL      float DEFAULT  0,
    RECEBER	        float DEFAULT  0,
    PAGAR	        float DEFAULT  0,
    SALDOS	        float DEFAULT  0
    )

AS

BEGIN

declare     @DESCRICAO varchar(200) = 'MOVIMENTAÇÃO FINANCEIRA'  ;
declare     @CAIXA numeric(15,2) = 0;
declare     @BANCO numeric(15,2) = 0;
declare     @RECEBER numeric(15,2) = 0 ;
declare     @PAGAR numeric(15,2) = 0 ;
declare     @SALDOS numeric(15,2) = 0;
declare     @SALDOINICIAL numeric(15,2);
declare     @SALDOSINICIALBANCOS numeric(15,2) = 0;
declare     @SALDOSINICIALCAIXA numeric(15,2) = 0;

SET @PREVISAOGLOBAL=UPPER(@PREVISAOGLOBAL);

if @PREVISAOGLOBAL=''
   SET @PREVISAOGLOBAL='N';

     --======================================================================
     --saldo do caixa
     --======================================================================

     IF (@T_CAIXA='S')
     Begin

        --SET @DESCRICAO = 'CONTROLE DE CAIXA';
        If @CONTACAIXA<1
        Begin
           INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                    DESCRICAO,
                                    SALDOINICIAL,
                                    --SALDOATUAL,
                                    RECEBER,
                                    PAGAR,
                                    SALDOS
                                    ) (
                                        (  SELECT @DATAPARAMETRO,
                                           CONTACAIXANOME,
                                           SUM(CONTACAIXASALDOINICIAL),
                                           SUM(RECEITAS),
                                           SUM(DESPESAS),
                                           SUM(CONTACAIXASALDOINICIAL)+SUM(RECEITAS-DESPESAS)

                                           FROM VIEW_FIN_CAIXA_CONTAS
                                           GROUP BY CONTACAIXANOME )
                                        );

          SELECT @SALDOSINICIALCAIXA=COALESCE(SUM(CONTACAIXASALDOINICIAL),0) FROM VIEW_FIN_CAIXA_CONTAS ;
          SELECT @SALDOS=COALESCE(SUM(RECEITAS-DESPESAS),0) FROM VIEW_FIN_CAIXA_CONTAS ;

          SELECT @SALDOS=@SALDOS+@SALDOSINICIALCAIXA;
        End;

        if @CONTACAIXA>0
        begin

           INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                    DESCRICAO,
                                    SALDOINICIAL,
                                    --SALDOATUAL,
                                    RECEBER,
                                    PAGAR,
                                    SALDOS) (
                                        (  SELECT @DATAPARAMETRO,
                                           CONTACAIXANOME,
                                           SUM(CONTACAIXASALDOINICIAL),
                                           SUM(RECEITAS),
                                           SUM(DESPESAS),
                                           SUM(CONTACAIXASALDOINICIAL)+SUM(RECEITAS-DESPESAS)
                                           FROM VIEW_FIN_CAIXA_CONTAS
                                           WHERE CONTACAIXA=@CONTACAIXA
                                           GROUP BY CONTACAIXANOME )
                                        );

          SELECT @SALDOSINICIALCAIXA=COALESCE(SUM(CONTACAIXASALDOINICIAL),0)   FROM VIEW_FIN_CAIXA_CONTAS WHERE CONTACAIXA=@CONTACAIXA;
          SELECT @SALDOS=COALESCE(SUM(RECEITAS-DESPESAS),0)  FROM VIEW_FIN_CAIXA_CONTAS WHERE CONTACAIXA=@CONTACAIXA;

          SELECT @SALDOS=@SALDOS+@SALDOSINICIALCAIXA;

        end;

     END;

     --======================================================================
     -- SALDO DO BANCO
     --======================================================================

     IF (@T_BANCARIO='S')
     Begin

        --SET @DESCRICAO = 'CONTROLE BANCÁRIO';
        if @CONTACAIXA<1
        begin

        INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOINICIAL, SALDOATUAL, SALDOS) (
         SELECT  @DATAPARAMETRO, 'BANCO '+coalesce( ( select NOME_BANCO from VIEW_CONTA_CORRENTE_DADOS where VIEW_CONTA_CORRENTE_DADOS.codigo=CTRL_BANCARIO.cta_corrente  ) ,'***')+
         ' CONTA CORRENTE: '+coalesce( ( select CTA_CORRENTE from VIEW_CONTA_CORRENTE_DADOS where VIEW_CONTA_CORRENTE_DADOS.codigo=CTRL_BANCARIO.cta_corrente  ) ,'***') ,
                 coalesce( ( select SALDOINICIAL from VIEW_CONTA_CORRENTE_DADOS where VIEW_CONTA_CORRENTE_DADOS.codigo=CTRL_BANCARIO.cta_corrente  ) ,0),
                 sum(VLR_CREDITO - VLR_DEBITO) ,
                 coalesce( ( select SALDOINICIAL from VIEW_CONTA_CORRENTE_DADOS where VIEW_CONTA_CORRENTE_DADOS.codigo=CTRL_BANCARIO.cta_corrente  ) ,0) + sum(VLR_CREDITO - VLR_DEBITO)

                 FROM CTRL_BANCARIO
                 where CTRL_BANCARIO.cta_corrente>0
                 group by cta_corrente);


         set @BANCO = coalesce((select SUM(SALDOATUAL) from  @FluxoCaixa),0);
         set @SALDOSINICIALBANCOS = coalesce( ( select SUM(SALDOINICIAL) from VIEW_CONTA_CORRENTE_DADOS /* where VIEW_CONTA_CORRENTE_DADOS.codigo=CTRL_BANCARIO.cta_corrente*/  ) ,0);

        if (@BANCO<0 )
           set @BANCO =0;

        set @SALDOS        = @SALDOS + @BANCO+@SALDOSINICIALBANCOS;

        end


     END;



     if ( @CAIXA>0 or @banco>0   )
     begin
                

                SET @DESCRICAO = '********** TOTALIZAÇÃO SALDO CAIXA + BANCO ==================>';
                --INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOINICIAL, RECEBER,      PAGAR,          SALDOS) VALUES  (@DATAPARAMETRO, @DESCRICAO, coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0), coalesce((select SUM(RECEBER) from  @FluxoCaixa),0), coalesce((select SUM(PAGAR) from  @FluxoCaixa),0), coalesce((select SUM(SALDOS) from  @FluxoCaixa),0) );
                --INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOINICIAL, RECEBER,      PAGAR,          SALDOS) VALUES  (@DATAPARAMETRO, @DESCRICAO, 0, coalesce((select SUM(RECEBER) from  @FluxoCaixa),0), coalesce((select SUM(PAGAR) from  @FluxoCaixa),0), coalesce((select SUM(SALDOS) from  @FluxoCaixa),0) );
                SET @DESCRICAO = '';

     end;

     -- inserir linha em branco
     INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOINICIAL, RECEBER,      PAGAR,          SALDOS) VALUES  (@DATAPARAMETRO, @DESCRICAO, 0, 0, 0, 0 );

     --set @SALDOS        = 0;
     --set @SALDOINICIAL  = 0;
     --set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
     --set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);;


     -----------------------------------------------------------------------
     -----                SALDO REAL                                   -----
     -----------------------------------------------------------------------
   
     if @PREVISAOGLOBAL='N'
     begin

         while (@DATAPARAMETRO < @DATA_LIMITE)
         begin

              IF (@T_RECEBER='S')
              Begin
                 
                 IF @SALDOINICIAL=0
                 begin

                    If @CONTACAIXA<1
                    begin
                        INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                               DESCRICAO,
                                               SALDOINICIAL,
                                               SALDOS
                                               ) (
                                                 (  SELECT @DATAPARAMETRO,
                                                    CONTACAIXANOME,
                                                    SUM(CONTACAIXASALDOINICIAL),
                                                    SUM(CONTACAIXASALDOINICIAL)
                                                    FROM  VIEW_FIN_CTARECEBER INNER JOIN CAD_CONTAS ON CAD_CONTAS.CODIGO=VIEW_FIN_CTARECEBER.CONTACAIXA
                                                    WHERE VIEW_FIN_CTARECEBER.QUITADO='S'
                                                    GROUP BY CONTACAIXANOME )
                                                 );

                         set @SALDOS        = 0;
                         set @SALDOINICIAL  = 0;
                         set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
                         set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);
                    end;

                    if @CONTACAIXA>0
                    begin
                       INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                               DESCRICAO,
                                               SALDOINICIAL,
                                               SALDOS
                                               ) (
                                                 (  SELECT @DATAPARAMETRO,
                                                    CONTACAIXANOME,
                                                    SUM(CONTACAIXASALDOINICIAL),
                                                    SUM(CONTACAIXASALDOINICIAL)
                                                    FROM VIEW_FIN_CTARECEBER INNER JOIN CAD_CONTAS ON CAD_CONTAS.CODIGO=VIEW_FIN_CTARECEBER.CONTACAIXA
                                                    WHERE CONTACAIXA=@CONTACAIXA AND VIEW_FIN_CTARECEBER.QUITADO='S'
                                                    GROUP BY CONTACAIXANOME )
                                                 );

                       set @SALDOS        = 0;
                       set @SALDOINICIAL  = 0;
                       set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
                       set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);
                    end;
                  end;
                  

                 --set @SALDOS        = @SALDOS + @BANCO+@SALDOSINICIALBANCOS;
                 -- SALDO CONTAS A RECEBER
                 set @receber        = 0;
                 set @pagar          = 0;

                 if @CONTACAIXA<1
                 begin
                    select @RECEBER=coalesce(sum(valor),0) from VIEW_FIN_CTARECEBER where VENCIMENTO=@DATAPARAMETRO AND VIEW_FIN_CTARECEBER.QUITADO='S'
                 END   ;

                 if @CONTACAIXA>0
                 begin
                    select @RECEBER=coalesce(sum(valor),0) from VIEW_FIN_CTARECEBER where VENCIMENTO=@DATAPARAMETRO   and CONTACAIXA=@CONTACAIXA AND VIEW_FIN_CTARECEBER.QUITADO='S'
                 END   ;

                 if (@RECEBER<0 )
                    set @RECEBER =0;

                 set @SALDOS        = @SALDOS + @RECEBER;


              End;  --IF (T_RECEBER='S')

              --======================================================================
              -- SALDO CONTAS A PAGAR

              IF (@T_PAGAR='S')
              Begin
                 IF @SALDOINICIAL=0
                 begin

                    If @CONTACAIXA<1
                    begin
                        INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                               DESCRICAO,
                                               SALDOINICIAL,
                                               SALDOS
                                               ) (
                                                 (  SELECT @DATAPARAMETRO,
                                                    CONTACAIXANOME,
                                                    SUM(CONTACAIXASALDOINICIAL),
                                                    SUM(CONTACAIXASALDOINICIAL)
                                                    FROM VIEW_FIN_CTAPAGAR INNER JOIN CAD_CONTAS ON CAD_CONTAS.CODIGO=VIEW_FIN_CTAPAGAR.CONTACAIXA
                                                    WHERE  VIEW_FIN_CTAPAGAR.QUITADO='S'
                                                    GROUP BY CONTACAIXANOME )
                                                 );

                         set @SALDOS        = 0;
                         set @SALDOINICIAL  = 0;
                         set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
                         set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);
                    end;

                    if @CONTACAIXA>0
                    begin
                       INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                               DESCRICAO,
                                               SALDOINICIAL,
                                               SALDOS
                                               ) (
                                                 (  SELECT @DATAPARAMETRO,
                                                    CONTACAIXANOME,
                                                    SUM(CONTACAIXASALDOINICIAL),
                                                    SUM(CONTACAIXASALDOINICIAL)
                                                    FROM VIEW_FIN_CTAPAGAR INNER JOIN CAD_CONTAS ON CAD_CONTAS.CODIGO=VIEW_FIN_CTAPAGAR.CONTACAIXA
                                                    WHERE CONTACAIXA=@CONTACAIXA AND VIEW_FIN_CTAPAGAR.QUITADO='S'
                                                    GROUP BY CONTACAIXANOME )
                                                 );

                       set @SALDOS        = 0;
                       set @SALDOINICIAL  = 0;
                       set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
                       set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);
                    end;
                 end;

                 if @CONTACAIXA<1
                 begin
                    select  @PAGAR=coalesce(sum(valor),0)  from   VIEW_FIN_CTAPAGAR where VENCIMENTO=@DATAPARAMETRO AND VIEW_FIN_CTAPAGAR.QUITADO='S'
                 END;

                 if @CONTACAIXA>0
                 begin
                select  @PAGAR=coalesce(sum(valor),0)  from   VIEW_FIN_CTAPAGAR where VENCIMENTO=@DATAPARAMETRO   and CONTACAIXA=@CONTACAIXA AND VIEW_FIN_CTAPAGAR.QUITADO='S'
             END;

             if (@PAGAR<0  )
                    set @PAGAR =0;

                 set @SALDOS       = @SALDOS + @pagar;

              End;  --IF (T_PAGAR='S')


              --if ( @CAIXA>0 or @banco>0 or @receber>0 or  @PAGAR>0  )
              if ( @receber>0 or  @PAGAR>0  )
              begin

                SET @DESCRICAO = 'MOVIMENTAÇÃO FINANCEIRA (CONTAS RECEBER/PAGAR)';
                INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, RECEBER,      PAGAR,          SALDOS) VALUES  (@DATAPARAMETRO, @DESCRICAO, @RECEBER, @PAGAR, @SALDOS);
                SET @DESCRICAO = '';

              end;

              set @DATAPARAMETRO=(select DATEADD ( DAY ,1, @DATAPARAMETRO ));

              set @CAIXA   = 0;
              set @banco   = 0;
              set @receber = 0;
              set @pagar   = 0;


         End;  --while (DATA_INI < data_fim) do

     End; --if @PREVISAOGLOBAL='N'

     -----------------------------------------------------------------------
     -----                PREVISÃO ORÇAMENTÁRIA                        -----
     -----------------------------------------------------------------------
     
     if @PREVISAOGLOBAL='S'
     begin

         while (@DATAPARAMETRO < @DATA_LIMITE)
         begin

              IF (@T_RECEBER='S')
              Begin
                   
                 --INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOS) VALUES  (@DATA_LIMITE, 'SALDO INICIAL X1: ', @SALDOINICIAL)
                 
                 IF @SALDOINICIAL=0
                 begin

                    If @CONTACAIXA<1
                    begin
                        INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                               DESCRICAO,
                                               SALDOINICIAL,
                                               SALDOS
                                               ) (
                                                 (  SELECT @DATAPARAMETRO,
                                                    CONTACAIXANOME,
                                                    SUM(CONTACAIXASALDOINICIAL),
                                                    SUM(CONTACAIXASALDOINICIAL)
                                                    FROM  VIEW_FIN_CTARECEBER INNER JOIN CAD_CONTAS ON CAD_CONTAS.CODIGO=VIEW_FIN_CTARECEBER.CONTACAIXA
                                                   
                                                    GROUP BY CONTACAIXANOME )
                                                 );

                         
                       if coalesce(@SALDOS,0)<=0 
                          set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
                 
                       if coalesce(@SALDOINICIAL,0)<=0 
                          set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);
                      
                    end;

                    if @CONTACAIXA>0
                    begin
                       INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                               DESCRICAO,
                                               SALDOINICIAL,
                                               SALDOS
                                               ) (
                                                 (  SELECT @DATAPARAMETRO,
                                                    CONTACAIXANOME,
                                                    SUM(CONTACAIXASALDOINICIAL),
                                                    SUM(CONTACAIXASALDOINICIAL)
                                                    FROM VIEW_FIN_CTARECEBER INNER JOIN CAD_CONTAS ON CAD_CONTAS.CODIGO=VIEW_FIN_CTARECEBER.CONTACAIXA
                                                    WHERE CONTACAIXA=@CONTACAIXA 
                                                    GROUP BY CONTACAIXANOME )
                                                 );

                       
                       if coalesce(@SALDOS,0)<=0 
                          set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
                 
                       if coalesce(@SALDOINICIAL,0)<=0 
                          set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);
                          

                    end;

                    set @SALDOINICIAL =0;   

                 --INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOS) VALUES  (@DATA_LIMITE, 'SALDO INICIAL X2: ', @SALDOINICIAL)
                              
                 end;
                 
                 

                 set @receber        = 0;
                 if @CONTACAIXA<1
                 begin
                    select @RECEBER=coalesce(sum(valor),0) from VIEW_FIN_CTARECEBER where VENCIMENTO=@DATAPARAMETRO;
                 END ;

                 if @CONTACAIXA>0
                 begin
                    select @RECEBER=coalesce(sum(valor),0) from VIEW_FIN_CTARECEBER where VENCIMENTO=@DATAPARAMETRO AND CONTACAIXA=@CONTACAIXA;
                 END ;

                 
                 
                 if (@RECEBER<0 )
                    set @RECEBER =0;

                 set @SALDOS        = @SALDOS + @RECEBER;


              End;  --IF (T_RECEBER='S')


              --======================================================================
              -- SALDO CONTAS A PAGAR

              IF (@T_PAGAR='S')
              Begin

                 
                 
                 if (@RECEBER<=0 ) and (@SALDOS<=0)
                    set @SALDOS =0;

             
                 --INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOS) VALUES  (@DATA_LIMITE, 'SALDO INICIAL X3: ', @SALDOINICIAL)
                 
                 IF @SALDOINICIAL=0
                 begin

                    If @CONTACAIXA<1
                    begin
                        INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                               DESCRICAO,
                                               SALDOINICIAL,
                                               SALDOS
                                               ) (
                                                 (  SELECT @DATAPARAMETRO,
                                                    CONTACAIXANOME,
                                                    SUM(CONTACAIXASALDOINICIAL),
                                                    SUM(CONTACAIXASALDOINICIAL)
                                                    FROM VIEW_FIN_CTAPAGAR INNER JOIN CAD_CONTAS ON CAD_CONTAS.CODIGO=VIEW_FIN_CTAPAGAR.CONTACAIXA
                                                    GROUP BY CONTACAIXANOME )
                                                 );

                       if coalesce(@SALDOS,0)<=0 
                          set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
                 
                       if coalesce(@SALDOINICIAL,0)<=0 
                          set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);
                         
                    end;

                    if @CONTACAIXA>0
                    begin
                       INSERT INTO @FLUXOCAIXA (VENCIMENTO,
                                               DESCRICAO,
                                               SALDOINICIAL,
                                               SALDOS
                                               ) (
                                                 (  SELECT @DATAPARAMETRO,
                                                    CONTACAIXANOME,
                                                    SUM(CONTACAIXASALDOINICIAL),
                                                    SUM(CONTACAIXASALDOINICIAL)
                                                    FROM VIEW_FIN_CTAPAGAR INNER JOIN CAD_CONTAS ON CAD_CONTAS.CODIGO=VIEW_FIN_CTAPAGAR.CONTACAIXA
                                                    WHERE CONTACAIXA=@CONTACAIXA 
                                                    GROUP BY CONTACAIXANOME )
                                                 );

                       if coalesce(@SALDOS,0)<=0 
                          set @SALDOS        = coalesce((select SUM(SALDOS) from  @FluxoCaixa),0);
                 
                       if coalesce(@SALDOINICIAL,0)<=0 
                          set @SALDOINICIAL  = coalesce((select SUM(SALDOINICIAL) from  @FluxoCaixa),0);
                      
                    end;

                    --set @SALDOINICIAL =0;   

                 end;
              
                 --INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOS) VALUES  (@DATA_LIMITE, 'SALDO INICIAL X4: ', @SALDOINICIAL)
                 
                 set @PAGAR       = 0;
                 if @CONTACAIXA<1
                 begin
                    select  @PAGAR=coalesce(sum(valor),0)  from   VIEW_FIN_CTAPAGAR where VENCIMENTO=@DATAPARAMETRO;
                 END;

                 if @CONTACAIXA>0
                 begin
                    select  @PAGAR=coalesce(sum(valor),0)  from   VIEW_FIN_CTAPAGAR where VENCIMENTO=@DATAPARAMETRO AND CONTACAIXA=@CONTACAIXA;
                 END;

                  if (@PAGAR<0  )
                     set @PAGAR =0;
                     

                 set @SALDOS       = @SALDOS - @PAGAR;
           
              End;  --IF (T_PAGAR='S')


              if ( @CAIXA>0 or @banco>0 or @receber>0 or  @PAGAR>0  )
              begin

                if (coalesce(@SALDOS,0)=0) and (coalesce(@PAGAR,0)>0)
                begin
                   set @SALDOS=@PAGAR;
                   --set @SALDOS=0;
                end;


                if (coalesce(@SALDOS,0)=0) and (coalesce(@RECEBER,0)>0)
                begin
                   set @SALDOS=@RECEBER;
                   --set @SALDOS=0;
                end;

                SET @DESCRICAO = 'MOVIMENTAÇÃO FINANCEIRA';
                INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, RECEBER,      PAGAR,          SALDOS) VALUES  (@DATAPARAMETRO, @DESCRICAO, @RECEBER, @PAGAR, @SALDOS);
                SET @DESCRICAO = '';

              end;

              set @DATAPARAMETRO=(select DATEADD ( DAY ,1, @DATAPARAMETRO ));

              set @CAIXA   = 0;
              set @banco   = 0;
              set @receber = 0;
              set @pagar   = 0;


         End;  --while (DATA_INI < data_fim) do

     End; --if @PREVISAOGLOBAL='S'

     set @DATAPARAMETRO=(select DATEADD ( DAY ,1, @DATAPARAMETRO ));

     set @CAIXA   = 0;
     set @banco   = 0;
     set @receber = 0;
     set @pagar   = 0;


     --if ( @CAIXA<=0 AND @banco<=0 AND @receber<=0 AND  @PAGAR<=0  )

      --SET @SALDOS        = (select /*SUM(SALDOS)+SUM(SALDOINICIAL)+SUM(RECEBER)-*/ SUM(PAGAR)  from  @FluxoCaixa);
      --SET @SALDOS        = (select SUM(SALDOINICIAL)+SUM(SALDOATUAL)+SUM(RECEBER) - SUM(PAGAR)  from  @FluxoCaixa);
      
      --INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOS) VALUES  (@DATA_LIMITE, 'SALDO INICIAL X5: ', @SALDOINICIAL)
      INSERT INTO @FluxoCaixa (VENCIMENTO, DESCRICAO, SALDOS) VALUES  (@DATA_LIMITE, 'SALDO FINAL', @SALDOS)

     RETURN;

END;


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_IDENTIFICADOR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FNC_IDENTIFICADOR](
   @STRTEXTO   SNOME,
   @NCOR       ICODIGO,
   @NTAMANHO   ICODIGO )
RETURNS SNOME
AS
BEGIN
DECLARE @STRIDENTIFICADOR SNOME;
   
   SET @STRIDENTIFICADOR=DBO.FNC_ALPHAREMOVE(@STRTEXTO,'');
   SET @STRIDENTIFICADOR=@STRIDENTIFICADOR+
                         DBO.FNC_ALPHAREMOVE(CAST(@NCOR       AS  VARCHAR(30)),'')+
                         DBO.FNC_ALPHAREMOVE(CAST(@NTAMANHO   AS  VARCHAR(30)),'');
   RETURN (UPPER(@STRIDENTIFICADOR))
END


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_ISINTEGER]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[FNC_ISINTEGER](@strTexto SNOME)
Returns ICODIGO
As 
Begin 
  Return IsNumeric(@strTexto + 'e0');
End


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_PCPFASEREFERENCIASFILTRAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  UserDefinedFunction [dbo].[FNC_PCPFASEREFERENCIASFILTRAR]    Script Date: 03/11/2012 21:33:12 ******/

CREATE FUNCTION [dbo].[FNC_PCPFASEREFERENCIASFILTRAR](
    @NEMPRESA			integer,
    @NORDEMPRODUCAO		integer
  )

RETURNS
    @TBL_PCPFASETRANSFERENCIA  TABLE(
	EMPRESA				ICODIGO,
	CODIGO		        ICODIGO,
	DATA				SDATE ,
	TERCEIRIZADO		ICODIGO ,
	FASE				ICODIGO ,
	REFERENCIA			SCODIGO ,
	COR_ID				ICODIGO ,
	COR					SCODIGO ,
	TAMANHO_ID			ICODIGO ,
	TAMANHO				SCODIGO ,
	ORDEM_GRADE			SCODIGO ,
	QTDE_TOTAL          IQUANTIDADE ,
	QTDE_ENVIADA		IQUANTIDADE ,
	QTDE_RETORNADA		IQUANTIDADE ,
	QTDE_RESTANTEENVIAR IQUANTIDADE ,
	QTDE_PERDAS			IQUANTIDADE ,
	QTDE_DEFEITOS		IQUANTIDADE ,
	VLR_UNIT			VALOR 
)    

AS

BEGIN

DECLARE @NTERCEIRIZADO		ICODIGO ;
DECLARE @NFASE				ICODIGO ;
DECLARE @SREFERENCIA		SCODIGO ;
DECLARE @NCOR_ID			ICODIGO ;
DECLARE @SCOR				SCODIGO ;
DECLARE @NTAMANHO_ID		ICODIGO ;
DECLARE @STAMANHO			SCODIGO ;
DECLARE @NORDEM_GRADE		SCODIGO ;

DECLARE @NQTDE_SOMAR		IQUANTIDADE ;

DECLARE @NQTDE_TOTAL		IQUANTIDADE ;
DECLARE @NQTDE_ENVIADA		IQUANTIDADE ;
DECLARE @NQTDE_RETORNADA	IQUANTIDADE ;
DECLARE @NQTDE_PERDAS		IQUANTIDADE ;
DECLARE @NQTDE_DEFEITOS		IQUANTIDADE ;
DECLARE @NQTDE_RESTANTE     IQUANTIDADE ;




   ------------------------------------------------------------------------
   -- 
   ------------------------------------------------------------------------

    INSERT INTO @TBL_PCPFASETRANSFERENCIA(
            	EMPRESA,
	            CODIGO,
	            DATA,	
            	TERCEIRIZADO,
	            FASE,
	            REFERENCIA,
	            COR_ID,
	            COR,
	            TAMANHO_ID,
	            TAMANHO,
	            ORDEM_GRADE,
	            QTDE_TOTAL,
	            QTDE_ENVIADA,
	            QTDE_RETORNADA,
	            QTDE_RESTANTEENVIAR,
	            QTDE_PERDAS,
	            QTDE_DEFEITOS,
	            VLR_UNIT
	            
    	            )  
           (  
        SELECT
          DISTINCT
            	EMPRESA,
	            CODIGO,
	            (SELECT PCP_ORDEMPRODUCAO.DATA FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=PCP_ORDEMPRODUCAO_ITENS_GRADE.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_ITENS_GRADE.CODIGO ),	
	            --DATARETORNO,
            	0,
	            0,
	            REFERENCIA,
	            COR_ID,
	            COR,
	            TAMANHO_ID,
	            TAMANHO,
	            ORDEM_GRADE,
	            QUANTIDADE,
	            0,
	            0,
	            0,
	            0,
	            0,
	            0
          
           FROM PCP_ORDEMPRODUCAO_ITENS_GRADE

           WHERE EMPRESA=@NEMPRESA AND CODIGO=@NORDEMPRODUCAO 
           AND
           COR_ID<>0
           AND
           TAMANHO_ID<>0
           AND
           PCP_ORDEMPRODUCAO_ITENS_GRADE.APROVADO='S'
            );



   ------------------------------------------------------------------------
   -- PESQUISAR INFORMAÇÕES 
   ------------------------------------------------------------------------
   DECLARE crCursorTabelaProduzir CURSOR FAST_FORWARD FOR

      -- select na tabela mestre (percorrer ela toda)
      SELECT 
         REFERENCIA,
         COR_ID,
         COR,
         TAMANHO_ID,
         TAMANHO,
         ORDEM_GRADE,
         QUANTIDADE
         
      FROM PCP_ORDEMPRODUCAO_ITENS_GRADE
      WHERE
         EMPRESA=@NEMPRESA
      AND
         CODIGO=@NORDEMPRODUCAO

      OPEN crCursorTabelaProduzir

      FETCH NEXT FROM crCursorTabelaProduzir
      INTO
        @SREFERENCIA,
        @NCOR_ID,
        @SCOR,
        @NTAMANHO_ID,
        @STAMANHO,
        @NORDEM_GRADE,
        @NQTDE_TOTAL
        

   WHILE @@FETCH_STATUS = 0
   BEGIN
      ------------------------------------------------------------------------
      -- FUNÇÕES PERSONALIZADAS
      ------------------------------------------------------------------------

       -- QUANTIDADE ENVIADA PARA PRODUÇÃO DA REFERENCIA, COR E TAMANHO "X"
       SELECT @NQTDE_ENVIADA=COALESCE(SUM (TBLREF.QTDE_ENVIADA),0) 
       FROM PCP_FASETRANSFERENCIA_REFERENCIAS TBLREF
       WHERE
          TBLREF.EMPRESA=@NEMPRESA
       AND
          TBLREF.ORDEMPRODUCAO=@NORDEMPRODUCAO
       AND
          TBLREF.REFERENCIA=@SREFERENCIA
       AND
          TBLREF.COR_ID=@NCOR_ID
       AND
          TBLREF.TAMANHO_ID=@NTAMANHO_ID  
          
       GROUP BY 
          TBLREF.EMPRESA, 
          TBLREF.CODIGO,  
          TBLREF.FASE,
          TBLREF.REFERENCIA, 
          TBLREF.COR_ID, 
          TBLREF.TAMANHO_ID   
              
       
       IF (@NQTDE_ENVIADA<0) OR (@NQTDE_ENVIADA IS NULL)
          SET @NQTDE_ENVIADA=0;
       
       SET @NQTDE_RESTANTE=COALESCE(@NQTDE_TOTAL,0)-COALESCE(@NQTDE_ENVIADA,0);     

       -- SALVAR NA TABELA
       UPDATE @TBL_PCPFASETRANSFERENCIA   SET 
          QTDE_ENVIADA = @NQTDE_ENVIADA,
          QTDE_RESTANTEENVIAR = COALESCE(@NQTDE_RESTANTE,0)
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO
       AND
          REFERENCIA=@SREFERENCIA
       AND
          COR_ID=@NCOR_ID
       AND
          TAMANHO_ID=@NTAMANHO_ID      


       -- SALVAR NA TABELA
       UPDATE @TBL_PCPFASETRANSFERENCIA   SET 
          QTDE_RESTANTEENVIAR = 0
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO
       AND
          QTDE_RESTANTEENVIAR<1;
          

       -- SALVAR NA TABELA
       UPDATE @TBL_PCPFASETRANSFERENCIA   SET 
          QTDE_ENVIADA = QTDE_TOTAL
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO
       AND
          QTDE_ENVIADA>QTDE_TOTAL;



       -- PEGAR A FASE DA REFERENCIA, COR E TAMANHO "X"
       SELECT @NFASE=COALESCE(TBLREF.FASE,0) 
       FROM PCP_FASETRANSFERENCIA_REFERENCIAS TBLREF
       WHERE
          TBLREF.EMPRESA=@NEMPRESA
       AND
          TBLREF.ORDEMPRODUCAO=@NORDEMPRODUCAO
       AND
          TBLREF.REFERENCIA=@SREFERENCIA
       AND
          TBLREF.COR_ID=@NCOR_ID
       AND
          TBLREF.TAMANHO_ID=@NTAMANHO_ID  
          

       -- SALVAR NA TABELA
       UPDATE @TBL_PCPFASETRANSFERENCIA   SET 
          FASE = @NFASE
       WHERE
          EMPRESA=@NEMPRESA
       AND
          CODIGO=@NORDEMPRODUCAO
       AND
          REFERENCIA=@SREFERENCIA
       AND
          COR_ID=@NCOR_ID
       AND
          TAMANHO_ID=@NTAMANHO_ID      


      ------------------------------------------------------------------------
      -- OBTER DADOS DO PROXIMO CURSOR (REGISTRO)
      ------------------------------------------------------------------------
      FETCH NEXT FROM crCursorTabelaProduzir
      INTO
        @SREFERENCIA,
        @NCOR_ID,
        @SCOR,
        @NTAMANHO_ID,
        @STAMANHO,
        @NORDEM_GRADE,
        @NQTDE_TOTAL

   END

   CLOSE crCursorTabelaProduzir
   DEALLOCATE crCursorTabelaProduzir

   RETURN; -- inserir dados na tabela


END;


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_PCPFASERELOCALIZACAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  UserDefinedFunction [dbo].[FNC_PCPFASEREFERENCIASFILTRAR]    Script Date: 03/11/2012 21:33:12 ******/

CREATE FUNCTION [dbo].[FNC_PCPFASERELOCALIZACAO](@NEMPRESA integer)

RETURNS
    @TBL_PCPFASESLOCALIZACAO  TABLE(
    EMPRESA                       ICODIGO,
	CODIGO                        ICODIGO,
	LOTE                          ICODIGO,
    LOTE_NOME                     SNOME,
	COLECAO                       ICODIGO,
    COLECAO_NOME                  SNOME,
	DATAOP                        SDATE,
	DATAPREVISAO                  SDATE,
	DATAINICIOFASE                SDATE,
	DATARETORNOFASE               SDATE,
	TERCEIRIZADO                 ICODIGO,
	TERCEIRIZADO_NOME            SNOME,
	FASE                         ICODIGO,
	FASEORDEM				     SCODIGO,
	FASE_NOME                    SNOME,
	REFERENCIA                   SCODIGO,
	DESCRICAO                    SNOME,
	QTDE_PRODUZIR                IQUANTIDADE
)    

AS

BEGIN

DECLARE @NTERCEIRIZADO		ICODIGO ;
DECLARE @NFASE				ICODIGO ;
DECLARE @SREFERENCIA		SCODIGO ;
DECLARE @NCOR_ID			ICODIGO ;
DECLARE @SCOR				SCODIGO ;
DECLARE @NTAMANHO_ID		ICODIGO ;
DECLARE @STAMANHO			SCODIGO ;
DECLARE @NORDEM_GRADE		SCODIGO ;

DECLARE @NQTDE_SOMAR		IQUANTIDADE ;

DECLARE @NQTDE_TOTAL		IQUANTIDADE ;
DECLARE @NQTDE_ENVIADA		IQUANTIDADE ;
DECLARE @NQTDE_RETORNADA	IQUANTIDADE ;
DECLARE @NQTDE_PERDAS		IQUANTIDADE ;
DECLARE @NQTDE_DEFEITOS		IQUANTIDADE ;
DECLARE @NQTDE_RESTANTE     IQUANTIDADE ;




   ------------------------------------------------------------------------
   -- 
   ------------------------------------------------------------------------

    INSERT INTO @TBL_PCPFASESLOCALIZACAO(
            	EMPRESA,
	            CODIGO,
	            FASE,
	            FASEORDEM,
	            FASE_NOME,
	            REFERENCIA,
	            DESCRICAO,

	            LOTE, -----------------------
            	LOTE_NOME,
            	COLECAO,
            	COLECAO_NOME,
	            DATAOP,
	            DATAPREVISAO,
	            DATAINICIOFASE,
	            DATARETORNOFASE,
	            TERCEIRIZADO,
	            TERCEIRIZADO_NOME,
	            QTDE_PRODUZIR
	            
    	            )
               (

            	SELECT
            	DISTINCT
            	
            	EMPRESA,
            	CODIGO,
            	FASE,
                (SELECT  TOP 1 CAD_FASESGRADE_LISTA.ORDEM FROM CAD_FASESGRADE_LISTA  WHERE CAD_FASESGRADE_LISTA.FASE=PCP_ORDEMPRODUCAO_ANDAMENTO.FASE  ),
                (SELECT CAD_FASES.NOME FROM CAD_FASES  WHERE CAD_FASES.CODIGO=PCP_ORDEMPRODUCAO_ANDAMENTO.FASE  ),
            	REFERENCIA,
            	COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE   CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_ANDAMENTO.REFERENCIA), '***'),
	            0, --LOTE,
            	'', --LOTE_NOME,
	            
            	COALESCE( (SELECT CODIGO      FROM CAD_COLECAO       WHERE CAD_COLECAO.CODIGO=COALESCE(        (SELECT COLECAO     FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_ANDAMENTO.REFERENCIA), 0)  ),0),
            	COALESCE( (SELECT NOME        FROM CAD_COLECAO       WHERE CAD_COLECAO.CODIGO=COALESCE(        (SELECT COLECAO     FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_ANDAMENTO.REFERENCIA), 0)  ),''),

 	            (SELECT  DATA        		FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=PCP_ORDEMPRODUCAO_ANDAMENTO.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_ANDAMENTO.CODIGO  ),
 	            (SELECT  DATAPREVISAO		FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=PCP_ORDEMPRODUCAO_ANDAMENTO.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_ANDAMENTO.CODIGO  ),
 	            (SELECT  DATA        		FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=PCP_ORDEMPRODUCAO_ANDAMENTO.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_ANDAMENTO.CODIGO  ),
 	            null,--(SELECT  DATARETORNO		FROM PCP_FASETRANSFERENCIA WHERE CODIGO=PCP_ORDEMPRODUCAO_ANDAMENTO.FASETRANSFERENCIA ),
                TERCEIRIZADO,
                COALESCE((SELECT CAD_CLIENTES.NOME_FANTASIA FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PCP_ORDEMPRODUCAO_ANDAMENTO.TERCEIRIZADO  ),'[INTERNO]'),
            	SUM(QTDE_PRODUZIR)
	            
            	FROM PCP_ORDEMPRODUCAO_ANDAMENTO
            	WHERE
            	EMPRESA=@NEMPRESA
            	AND
            	QTDE_PRODUZIR>0
            	AND   
            	PCP_ORDEMPRODUCAO_ANDAMENTO.CODIGO=(SELECT  CODIGO        		FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=PCP_ORDEMPRODUCAO_ANDAMENTO.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_ANDAMENTO.CODIGO AND ENCERRADO IN ('N','NAO','')  )
            	
            	
            	GROUP BY
            	EMPRESA,
            	CODIGO,
            	FASE,
            	--FASETRANSFERENCIA,
            	REFERENCIA,
            	TERCEIRIZADO
            	
            	 
            	
            );

  ------------------------------------------------------------------------------------------
  ---  RETURN -> ENVIAR GRAVAR NA TABELA
  ---
  ------------------------------------------------------------------------------------------
   RETURN; -- inserir dados na tabela


END;


GO
/****** Object:  UserDefinedFunction [dbo].[SPCAIXA_SALDO_01]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SPCAIXA_SALDO_01] ( 
    @DATA_INI date,
    @DATA_FIM date,
    @SLDANTERIOR varchar(1),
    @WPLANO_CTA varchar(30)
  
) 

RETURNS 

    @SPCAIXA_SALDO  TABLE( 
    
    
    DATA		    date DEFAULT GETDATE(),
    TIPO			varchar(100)  DEFAULT  '', 
    DESCRICAO		varchar(100)  DEFAULT  '', 
    SALDO_ANTERIOR	float DEFAULT  0,
    CREDITO	        float DEFAULT  0,  
    DEBITO	        float DEFAULT  0,
    SALDOATUAL	    float DEFAULT  0
    
    
    )
 
AS
BEGIN
   

declare @VALORCREDITO numeric(15,2);
declare @VALORDEBITO numeric(15,2);
/*
  -- zerar quaisquer creditos
  CREDITO = 0;   

  -- zerar quaisquer debitos
  DEBITO  = 0;   

  -- transferir SALDO ANTERIOR para saldo atual
  SALDOATUAL  = 0;

  SALDO_ANTERIOR  = 0;

  /* calcular o saldo anterior ao relatório soliticado
     Somente se o usuário solicitar */

  if (SLDANTERIOR='S') then
     begin

     -- essa rotina retorna todos os credito
     select coalesce(sum(credito),0)                                
     from   ctrl_caixa_saldo                                           
     where data < :DATA_INI
     into :valorcredito;   
                                                                   
     -- essa rotina retorna todos os debitos
     select coalesce(sum(debito),0)                                
     from  ctrl_caixa_saldo                                         
     where data < :DATA_INI
     into :valordebito;   
   
     -- Informar a data anteior a data inicial informada pelo usuario
     --DATA          = DATA_INI-1;
     DATA          = DATA_INI-1;

     -- Informar uma mensagem para  usuario
     TIPO           = 'SALDO ANTERIOR ATÉ ' || cast(:DATA_INI-1 as date);
   
     -- obtenho o saldo anterior subtraindo o crédito e o débito
     SALDO_ANTERIOR = valorcredito - valordebito;                  
   
     /* Se saldo anterior for negativo, pegar o valor da varivel  SALDO_ANTERIOR */

     CREDITO = valorcredito;

     DEBITO = valordebito;

     -- transferir SALDO ANTERIOR para saldo atual
     SALDOATUAL  = SALDO_ANTERIOR;

     -- exibir na tela se saldo anterior for maior o menor que 0 (zero)
     if (@SALDO_ANTERIOR<>0) then
        suspend; --  <== cria um retorno (Returns) e faz exibir na tela

     -- transferir SALDO ANTERIOR para saldo atual
     SALDOATUAL  = SALDO_ANTERIOR;

     -- zerar saldo anterior para que seja exibido somente na primeira linha e não
     -- nas linhas anteriores
  
     SALDO_ANTERIOR=0;
  end

  /* LOOP para calcular saldos  */
  for select
              DATA,
              sum(CREDITO),
              sum(DEBITO)

  from ctrl_caixa_saldo
  where
   data between :DATA_INI and :DATA_FIM
  group by DATA
  order by DATA

  into :DATA,  :CREDITO, :DEBITO
  do
  begin

      TIPO ='RESUMO DIÁRIO';

     -- execute procedure sp_erro_msg ('x');

      SALDOATUAL = SALDOATUAL + (Credito - Debito);


     suspend;
  end

   INSERT INTO @SPCAIXA_SALDO (VENCIMENTO, DESCRICAO, SALDOS) VALUES  (@DATA_LIMITE, 'SALDO FINAL', @SALDOS) 
   */
   RETURN


END;


GO
/****** Object:  UserDefinedFunction [dbo].[SZEROS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[SZEROS] (@codigo Int, @quantidade int)
returns varchar(10)
as
begin
return ( replicate('0',(@quantidade - len(cast(@Codigo as varchar)))) + cast(@Codigo as Varchar))
end


GO
/****** Object:  Table [dbo].[CAD_ATIVIDADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_ATIVIDADES](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_BANCOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_BANCOS](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[DATA] [dbo].[SDATE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CARTEIRA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CARTEIRA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CELULAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CELULAS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[RESPONSAVEL] [dbo].[ICODIGO] NULL,
 CONSTRAINT [PK_CAD_CELULAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CFOP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CFOP](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[NFE] [dbo].[BOOLEAN] NULL,
	[DENTRO_ESTADO] [dbo].[BOOLEAN] NULL,
	[DETALHE] [dbo].[TEXTO] NULL,
	[FISCO] [dbo].[TEXTO] NULL,
	[OPERACAO] [dbo].[SCODIGO] NULL,
	[CALCULA_ICMS] [dbo].[BOOLEAN] NULL,
	[CALCULA_IPI] [dbo].[BOOLEAN] NULL,
	[CALCULA_ISS] [dbo].[BOOLEAN] NULL,
	[CALCULA_SEFAZ] [dbo].[BOOLEAN] NULL,
	[CALCULA_COFINS] [dbo].[BOOLEAN] NULL,
	[REDUCAO_ICMS] [dbo].[PERCENTUAL] NULL,
	[REDUCAO_IPI] [dbo].[PERCENTUAL] NULL,
	[DESCONTO_SEFAZ] [dbo].[PERCENTUAL] NULL,
	[DESCONTO_COFINS] [dbo].[PERCENTUAL] NULL,
	[DESCONTO_PIS] [dbo].[PERCENTUAL] NULL,
	[RECUPERA_ICMS] [dbo].[SCODIGO] NULL,
	[RECUPERA_IPI] [dbo].[BOOLEAN] NULL,
	[DESCONTO_SUFRAMA] [dbo].[PERCENTUAL] NULL,
	[BAIXA_ESTOQUE] [dbo].[BOOLEAN] NULL,
	[SUFRAMA] [dbo].[SCODIGO] NULL,
 CONSTRAINT [PK_CAD_CFOP] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CHEQUES_MOTIVO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CHEQUES_MOTIVO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_CHEQUES_MOTIVO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CLASSIFICAO_FISCAL]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLASSIFICAO_FISCAL](
	[CODIGO] [dbo].[SCODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NOT NULL,
 CONSTRAINT [PK_CAD_CLASSIFISCAL] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CLASSIFISCAL]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLASSIFISCAL](
	[CODIGO] [varchar](30) NOT NULL,
	[DESCRICAO] [varchar](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CLIENTES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLIENTES](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[FOTO] [dbo].[IMAGEM] NULL,
	[TIPO] [dbo].[SCODIGO] NOT NULL,
	[CLASSIFICACAO] [dbo].[CLASSIFICACAO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DATA_NASCIMENTO] [dbo].[SDATE] NULL,
	[ULTIMAVENDA_DATA] [dbo].[SDATE] NULL,
	[DATA_ULTIMA_VENDA] [dbo].[SDATE] NULL,
	[ULTIMAVENDA_ORIGEM] [dbo].[SCODIGO] NULL,
	[CPF_CNPJ] [dbo].[SCODIGO] NULL,
	[NOME] [dbo].[SNOME] NOT NULL,
	[NOME_FANTASIA] [dbo].[SNOME] NULL,
	[CONTATO] [dbo].[SNOME] NULL,
	[RG_IE] [dbo].[SCODIGO] NULL,
	[ORG_EMISSOR] [dbo].[SCODIGO] NULL,
	[SEXO] [dbo].[SEXO] NULL,
	[FILIACAO_NOMEPAI] [dbo].[SNOME] NULL,
	[FILIACAO_NOMEMAE] [dbo].[SNOME] NULL,
	[ESTADO_CIVIL] [dbo].[SNOME] NULL,
	[CONJUGE_CPF] [dbo].[SCODIGO] NULL,
	[CONJUGE_NOME] [dbo].[SNOME] NULL,
	[CXP] [dbo].[SCODIGO] NULL,
	[CEP] [dbo].[SCODIGO] NULL,
	[ENDERECO] [dbo].[SNOME] NULL,
	[NUMERO] [dbo].[SCODIGO] NULL,
	[COMPLEMENTO] [dbo].[SNOME] NULL,
	[BAIRRO] [dbo].[SNOME] NULL,
	[CODIGOCIDADE] [dbo].[ICODIGO] NULL,
	[NOMECIDADE] [dbo].[SNOME] NULL,
	[CODIGOUF] [dbo].[ICODIGO] NULL,
	[UF] [dbo].[SCODIGO] NULL,
	[DDD_FONE] [dbo].[ICODIGO] NULL,
	[FONE] [dbo].[SCODIGO] NULL,
	[DDD_FAX] [dbo].[ICODIGO] NULL,
	[FAX] [dbo].[SCODIGO] NULL,
	[DDD_CELULAR] [dbo].[ICODIGO] NULL,
	[CELULAR] [dbo].[SCODIGO] NULL,
	[DDD_VOIP] [dbo].[ICODIGO] NULL,
	[VOIP] [dbo].[SCODIGO] NULL,
	[EMAIL] [dbo].[SNOME] NULL,
	[SITE] [dbo].[SNOME] NULL,
	[REFERENCIA] [dbo].[SNOME] NULL,
	[VENDEDOR] [dbo].[ICODIGO] NULL,
	[REGIAO] [dbo].[ICODIGO] NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NULL,
	[ESTRANGEIRO] [dbo].[BOOLEAN] NULL,
	[NATURALIDADE] [dbo].[SNOME] NULL,
	[CREDITO_LIMITE] [dbo].[VALOR] NULL,
	[CREDITO_UTILIZADO] [dbo].[VALOR] NULL,
	[CREDITO_DISPONIVEL] [dbo].[VALOR] NULL,
	[BLOQUEADO] [dbo].[BOOLEAN] NULL,
	[PLANO_CONTAS] [dbo].[SCODIGO] NULL,
	[CFOP] [dbo].[ICODIGO] NULL,
	[CENTROCUSTO] [dbo].[ICODIGO] NULL,
	[CONTACORRENTE] [dbo].[ICODIGO] NULL,
	[ENDCOB_ENDERECO] [dbo].[SNOME] NULL,
	[ENDCOB_BAIRRO] [dbo].[SNOME] NULL,
	[ENDCOB_DDD] [dbo].[ICODIGO] NULL,
	[ENDCOB_FONE] [dbo].[SCODIGO] NULL,
	[ENDCOB_CEP] [dbo].[SCODIGO] NULL,
	[ENDCOB_CXP] [dbo].[SCODIGO] NULL,
	[ENDCOB_CODIGOCIDADE] [dbo].[ICODIGO] NULL,
	[ENDCOB_NOMECIDADE] [dbo].[SNOME] NULL,
	[ENDCOB_UF] [dbo].[SCODIGO] NULL,
	[PROTESTO] [dbo].[SCODIGO] NULL,
	[PROTESTO_DATA] [dbo].[SDATE] NULL,
	[ETIQUETA] [dbo].[BOOLEAN] NULL,
	[NACIONALIDADE] [dbo].[SNOME] NULL,
	[ATIVO] [dbo].[BOOLEAN] NULL,
	[ATIVODATA] [dbo].[SDATE] NULL,
	[CONVENIO] [dbo].[ICODIGO] NULL,
	[ATIVIDADE] [dbo].[ICODIGO] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[OBS_SERASA] [dbo].[TEXTO] NULL,
	[OBS_SINTEGRA] [dbo].[TEXTO] NULL,
	[CONJUGE_DNASCIMENTO] [dbo].[SNOME] NULL,
	[CONJUGE_EMPRESA] [dbo].[SNOME] NULL,
	[CONJUGE_FONE] [dbo].[SCODIGO] NULL,
	[CONJUGE_ENDERECO] [dbo].[SNOME] NULL,
	[CONJUGE_CIDADE] [dbo].[SNOME] NULL,
	[CONJUGE_UF] [dbo].[SNOME] NULL,
	[CONJUGE_CARGO] [dbo].[SNOME] NULL,
	[CONJUGE_TEMPO] [dbo].[SNOME] NULL,
	[CONJUGE_SALARIO] [dbo].[VALOR] NULL,
	[EMPREGO_EMPRESA] [dbo].[SNOME] NULL,
	[EMPREGO_FONE] [dbo].[SCODIGO] NULL,
	[EMPREGO_ENDERECO] [dbo].[SNOME] NULL,
	[EMPREGO_CIDADE] [dbo].[SNOME] NULL,
	[EMPREGO_UF] [dbo].[SNOME] NULL,
	[EMPREGO_CARGO] [dbo].[SNOME] NULL,
	[EMPREGO_TEMPO] [dbo].[SNOME] NULL,
	[EMPREGO_SALARIO] [dbo].[VALOR] NULL,
	[COMISSAO] [dbo].[VALOR] NULL,
	[COMISSIONAR] [dbo].[BOOLEAN] NULL,
	[SALARIO] [dbo].[VALOR] NULL,
	[TRANSPORTADORA_PLACA] [dbo].[SCODIGO] NULL,
	[TRANSPORTADORA_CIDADE] [dbo].[SNOME] NULL,
	[TRANSPORTADORA_UF] [dbo].[SNOME] NULL,
	[VALOR_SERVICOS] [dbo].[VALOR] NULL,
	[PAGTOTERCEIRIZADO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_CAD_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CLIENTES_BANCO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLIENTES_BANCO](
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[BANCO] [dbo].[SCODIGO] NULL,
	[AGENCIA] [dbo].[SCODIGO] NULL,
	[CONTA] [dbo].[SCODIGO] NULL,
	[GERENTE] [dbo].[SNOME] NULL,
	[AGENCIA_FONE] [dbo].[SCODIGO] NULL,
	[CHEQUE_ESPECIAL] [dbo].[BOOLEAN] NULL,
	[ATIVA] [dbo].[BOOLEAN] NULL,
	[CIDADE] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CLIENTES_COMERCIO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLIENTES_COMERCIO](
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[EMPRESA] [dbo].[SNOME] NULL,
	[FONE] [dbo].[SCODIGO] NULL,
	[DATA_ULTIMACOMPRA] [dbo].[SDATE] NULL,
	[VLR_ULTIMACOMPRA] [dbo].[VALOR] NULL,
	[VLR_PARCELA] [dbo].[VALOR] NULL,
	[DATA_ULTIMAPARCELA] [dbo].[SDATE] NULL,
	[CIDADE] [dbo].[SNOME] NULL,
	[UF] [dbo].[SCODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CLIENTES_CREDITOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLIENTES_CREDITOS](
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[NOTAFISCAL] [dbo].[ICODIGO] NULL,
	[FINCONTARECEBER] [dbo].[ICODIGO] NULL,
	[ORIGEMCREDITO] [dbo].[SNOME] NULL,
	[DESTINOCREDITO] [dbo].[SNOME] NULL,
	[VALOR] [dbo].[VALOR] NULL,
	[UTILIZADO] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CLIENTES_SOCIOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLIENTES_SOCIOS](
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[DATA_NASCIMENTO] [dbo].[SDATE] NULL,
	[FONE] [dbo].[SCODIGO] NULL,
	[CARGO] [dbo].[SNOME] NULL,
	[PARTICIPACAO] [dbo].[PERCENTUAL] NULL,
	[CPF] [varchar](18) NULL,
	[RG] [varchar](18) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_COLECAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_COLECAO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[PERIODO_INI] [dbo].[SDATE] NULL,
	[PERIODO_FIM] [dbo].[SDATE] NULL,
	[PECAS_META] [dbo].[IQUANTIDADE] NULL,
	[QTDE_MODELOS] [dbo].[IQUANTIDADE] NULL,
	[VALOR_META] [dbo].[VALOR] NULL,
	[STATUS] [dbo].[BOOLEAN] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CONTAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CONTAS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DATAALTERACAO] [dbo].[SDATE] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[SALDOINICIAL] [dbo].[VALOR] NULL,
	[SALDOATUAL] [dbo].[VALOR] NULL,
 CONSTRAINT [PK_FIN_CONTACAIXA] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_CORES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CORES](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[COR] [dbo].[SCODIGO] NULL,
 CONSTRAINT [PK_CAD_CORES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_CAD_CORES_NOME] UNIQUE NONCLUSTERED 
(
	[NOME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_DEFEITOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_DEFEITOS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NOT NULL,
	[QUALIDADE] [dbo].[ICODIGO] NULL,
 CONSTRAINT [PK__CAD_DEFE__CC87E12738996AB5] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_DEPARTAMENTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_DEPARTAMENTOS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SCODIGO] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_EMBALAGENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_EMBALAGENS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_EMPRESA_TIPO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_EMPRESA_TIPO](
	[TIPO_EMPRESA] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_ESTILISTA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_ESTILISTA](
	[CODIGO] [int] NOT NULL,
	[NOME] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_ETIQUETAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_ETIQUETAS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[COMPOSICAO] [dbo].[TEXTO] NULL,
	[TOTAL] [dbo].[VALOR] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_ETIQUETASDET]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_ETIQUETASDET](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[COMPOSICAO] [dbo].[TEXTO] NULL,
	[PERCENTUAL] [dbo].[PERCENTUAL] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_FAIXAETARIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_FAIXAETARIA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[IDADE_MINIMA] [dbo].[IQUANTIDADE] NULL,
	[IDADE_MAXIMA] [dbo].[IQUANTIDADE] NULL,
 CONSTRAINT [PK__CAD_FAIX__CC87E1276FE99F9F] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_FASES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_FASES](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NOT NULL,
	[IMPRIMEOP] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_CAD_FASES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_FASESGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_FASESGRADE](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NOT NULL,
	[IMPRIMEOP] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_CAD_FASESGRADE] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_FASESGRADE_LISTA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_FASESGRADE_LISTA](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[FASE] [dbo].[ICODIGO] NOT NULL,
	[ORDEM] [dbo].[SCODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[IMPRIMEOP] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_FORMAPAGTO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_FORMAPAGTO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NOT NULL,
	[ACRESCIMO] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VENCIMENTO_DIA] [dbo].[ICODIGO] NULL,
	[TIPO_PAGAMENTO] [dbo].[SNOME] NULL,
	[ARRED_SN] [dbo].[BOOLEAN] NULL,
	[ARREDONDAR] [dbo].[SCODIGO] NULL,
	[PARCELAMINIMA] [dbo].[VALOR] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_FORMAPAGTODIAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAD_FORMAPAGTODIAS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[DIAS] [dbo].[ICODIGO] NULL,
	[DIA_FIXO] [dbo].[ICODIGO] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAD_GENERO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_GENERO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_GRADE](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_GRADELISTA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_GRADELISTA](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[ID_TAMANHO] [dbo].[ICODIGO] NULL,
	[ORDEM] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_GRIFES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_GRIFES](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
 CONSTRAINT [PK__CAD_GRIF__CC87E12700200768] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_GRUPO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_GRUPO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_CAD_GRUPO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_IBGEMUNICIPIO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_IBGEMUNICIPIO](
	[CEP] [dbo].[SCODIGO] NOT NULL,
	[TIPO] [dbo].[SNOME] NULL,
	[ENDERECO] [dbo].[SNOME] NULL,
	[BAIRRO] [dbo].[SNOME] NULL,
	[CIDADE] [dbo].[SNOME] NULL,
	[CIDADE_CODIGO] [dbo].[SCODIGO] NULL,
	[UF] [dbo].[SNOME] NULL,
	[UF_CODIGO] [dbo].[ICODIGO] NULL,
	[AREAKM2] [dbo].[FQUANTIDADE] NULL,
	[POPULACAO] [dbo].[IQUANTIDADE] NULL,
	[USERNAME] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_LOTEPRODUCAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_LOTEPRODUCAO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[PERIODO_INI] [dbo].[SDATE] NULL,
	[PERIODO_FIM] [dbo].[SDATE] NULL,
	[PECAS_META] [dbo].[IQUANTIDADE] NULL,
	[STATUS] [dbo].[BOOLEAN] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_MAQUINAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_MAQUINAS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[N_SERIE] [dbo].[SNOME] NULL,
	[NRO_AGULHAS] [dbo].[IQUANTIDADE] NULL,
	[NRO_FIOS] [dbo].[IQUANTIDADE] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[STATUS] [dbo].[BOOLEAN] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_MARKUP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_MARKUP](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[MARKUP] [dbo].[PERCENTUAL] NULL,
	[OUTROSIMPOSTOS] [dbo].[PERCENTUAL] NULL,
	[ICMS] [dbo].[PERCENTUAL] NULL,
	[IPI] [dbo].[PERCENTUAL] NULL,
	[PUBLICIDADE] [dbo].[PERCENTUAL] NULL,
	[INADIMPLENCIA] [dbo].[PERCENTUAL] NULL,
	[ADMINISTRATIVO] [dbo].[PERCENTUAL] NULL,
	[FINANCEIRO] [dbo].[PERCENTUAL] NULL,
	[PIS] [dbo].[PERCENTUAL] NULL,
	[COFINS] [dbo].[PERCENTUAL] NULL,
	[IR] [dbo].[PERCENTUAL] NULL,
	[IMPORTACAO] [dbo].[PERCENTUAL] NULL,
	[FRETE] [dbo].[PERCENTUAL] NULL,
	[MARGEMLUCRO] [dbo].[PERCENTUAL] NULL,
 CONSTRAINT [PK_CAD_MARKUP] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_MOTIVOBAIXA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_MOTIVOBAIXA](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_CAD_MOTIVOBAIXA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_NCM]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_NCM](
	[CODIGO] [dbo].[SCODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NOT NULL,
	[UNIDADE] [dbo].[SCODIGO] NULL,
 CONSTRAINT [PK_CAD_NCM] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PAISES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PAISES](
	[CODIGO] [dbo].[SCODIGO] NOT NULL,
	[PAIS] [dbo].[SNOME] NOT NULL,
	[DDI] [dbo].[SCODIGO] NULL,
 CONSTRAINT [PK_CAD_PAISES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PARAMCUSTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PARAMCUSTOS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[PERCENTUAL] [dbo].[VALOR] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PROBLEMAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PROBLEMAS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PROCESSO_MAQUINA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAD_PROCESSO_MAQUINA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[MAQUINA] [dbo].[ICODIGO] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[MAQUINA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAD_PROCESSO_MAQUINA_DETALHE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PROCESSO_MAQUINA_DETALHE](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[MAQUINA] [dbo].[ICODIGO] NULL,
	[PROCESSO] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[TEMPO] [dbo].[FHORAS] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PROCESSO_OPERADOR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAD_PROCESSO_OPERADOR](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[FUNCIONARIO] [dbo].[ICODIGO] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAD_PROCESSO_OPERADOR_DETALHE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PROCESSO_OPERADOR_DETALHE](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[MAQUINA] [dbo].[ICODIGO] NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_PROCESSO_OPERADOR_DETALHE] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[MAQUINA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PROCESSOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PROCESSOS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NOT NULL,
	[TEMPO] [dbo].[FHORAS] NULL,
	[CUSTO] [dbo].[VALOR] NULL,
	[INSTRUCOES] [dbo].[TEXTO] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PROCESSOSGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PROCESSOSGRADE](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[TEMPO_TOTAL] [dbo].[FHORAS] NULL,
	[CUSTO_TOTAL] [dbo].[VALOR] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PROCESSOSLISTA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PROCESSOSLISTA](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[PROCESSO] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[TEMPO] [dbo].[FHORAS] NULL,
	[CUSTO] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PRODUTOS](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[REFERENCIAREDUZIDA] [dbo].[SCODIGO] NULL,
	[GRUPO] [dbo].[ICODIGO] NULL,
	[SUBGRUPO] [dbo].[ICODIGO] NULL,
	[TIPO_PRODUTO] [dbo].[SCODIGO] NOT NULL,
	[GRIFE] [dbo].[ICODIGO] NULL,
	[COLECAO] [dbo].[ICODIGO] NULL,
	[FAIXA_ETARIA] [dbo].[ICODIGO] NULL,
	[ESTILISTA] [dbo].[ICODIGO] NULL,
	[ETIQUETA] [dbo].[ICODIGO] NULL,
	[GRADE] [dbo].[ICODIGO] NULL,
	[FASE] [dbo].[ICODIGO] NULL,
	[EMBALAGEM] [dbo].[ICODIGO] NULL,
	[COMPOSICAO] [dbo].[ICODIGO] NULL,
	[GENERO] [dbo].[ICODIGO] NULL,
	[NCM] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NOT NULL,
	[DESCRICAOREDUZIDA] [dbo].[SNOME] NULL,
	[CLASSIFICAO_FISCAL] [dbo].[SCODIGO] NULL,
	[SITUACAO_TRIBUTARIA] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[HORAS] [dbo].[HORAS] NULL,
	[DT_ULTIMA_COMPRA] [dbo].[SDATE] NULL,
	[DT_ULTIMA_VENDA] [dbo].[SDATE] NULL,
	[DT_VALIDADE] [dbo].[SDATE] NULL,
	[GERAR_CODBARRA] [dbo].[BOOLEAN] NULL,
	[COMPOSICAO_DESCRICAO] [dbo].[SNOME] NULL,
	[CODIGO_BARRA] [dbo].[SCODIGO] NULL,
	[CODIGO_FABRICANTE] [dbo].[SCODIGO] NULL,
	[UNIDADE] [dbo].[SCODIGO] NULL,
	[OZ] [dbo].[FQUANTIDADE] NULL,
	[PESO] [dbo].[FQUANTIDADE] NULL,
	[PESO_LIQUIDO] [dbo].[FQUANTIDADE] NULL,
	[PESO_M2] [dbo].[FQUANTIDADE] NULL,
	[QTDE_TECIDOS] [dbo].[FQUANTIDADE] NULL,
	[QTDE_OPCOES] [dbo].[FQUANTIDADE] NULL,
	[PRAZOENTREGA] [dbo].[IQUANTIDADE] NULL,
	[LOTE] [dbo].[SCODIGO] NULL,
	[NUM_SERIE] [dbo].[SCODIGO] NULL,
	[COMISSAO_VAREJO] [dbo].[PERCENTUAL] NULL,
	[COMISSAO_ATACADO] [dbo].[PERCENTUAL] NULL,
	[COMISSAO_REPRESENTANTE] [dbo].[PERCENTUAL] NULL,
	[REGISTROINPI] [dbo].[SCODIGO] NULL,
	[VOLUME] [dbo].[FQUANTIDADE] NULL,
	[PROMOCAO] [dbo].[BOOLEAN] NULL,
	[MARCA] [dbo].[SNOME] NULL,
	[LOCALIZACAO] [dbo].[SNOME] NULL,
	[ATIVO] [dbo].[BOOLEAN] NULL,
	[INSTRUCOES] [dbo].[TEXTO] NULL,
	[TOTAL_RESERVA] [dbo].[FQUANTIDADE] NULL,
	[TOTAL_ORDEMPRODUCAO] [dbo].[FQUANTIDADE] NULL,
	[TOTAL_QTDEMATPRIMA] [dbo].[FQUANTIDADE] NULL,
	[TOTAL_VLRMATPRIMA] [dbo].[VALOR] NULL,
	[TOTAL_PROCESSO_TEMPO] [dbo].[FQUANTIDADE] NULL,
	[TOTAL_PROCESSO_CUSTOS] [dbo].[VALOR] NULL,
	[TOTAL_CUSTOS_PERCENTUAL] [dbo].[PERCENTUAL] NULL,
	[TOTAL_CUSTOS_VALOR] [dbo].[VALOR] NULL,
	[SALDO_IMPLANTACAO] [dbo].[FQUANTIDADE] NULL,
	[ESTOQUEMINIMO] [dbo].[FQUANTIDADE] NULL,
	[ESTOQUEMAXIMO] [dbo].[FQUANTIDADE] NULL,
	[ESTOQUESALDO] [dbo].[FQUANTIDADE] NULL,
	[MG_LUCRO] [dbo].[PERCENTUAL] NULL,
	[IPI] [dbo].[PERCENTUAL] NULL,
	[ICMS] [dbo].[PERCENTUAL] NULL,
	[PIS] [dbo].[PERCENTUAL] NULL,
	[COFINS] [dbo].[PERCENTUAL] NULL,
	[PUBLICIDADE] [dbo].[PERCENTUAL] NULL,
	[INADIMPLENCIA] [dbo].[PERCENTUAL] NULL,
	[ADMINISTRATIVO] [dbo].[PERCENTUAL] NULL,
	[IMPORTACAO] [dbo].[PERCENTUAL] NULL,
	[PERC_FRETE] [dbo].[PERCENTUAL] NULL,
	[FINANCEIRO] [dbo].[PERCENTUAL] NULL,
	[IMPOSTOS_OUTROS] [dbo].[PERCENTUAL] NULL,
	[MARKUP] [dbo].[PERCENTUAL] NULL,
	[IR] [dbo].[PERCENTUAL] NULL,
	[PRC_CUSTOBRUTO] [dbo].[VALOR] NULL,
	[PRC_CUSTOPRODUCAO] [dbo].[VALOR] NULL,
	[PRC_CUSTO] [dbo].[VALOR] NULL,
	[PRC_VENDA] [dbo].[VALOR] NULL,
	[LUCRO_LIQUIDO] [dbo].[VALOR] NULL,
	[DETALHES] [dbo].[TEXTO] NULL,
	[PRODUCAO_TEMPO] [dbo].[FQUANTIDADE] NULL,
	[PRODUCAO_CUSTOS] [dbo].[VALOR] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[FORNECEDOR] [dbo].[ICODIGO] NULL,
	[MARKUPID] [dbo].[ICODIGO] NULL,
	[CFOPDENTROESTADO] [dbo].[ICODIGO] NULL,
	[CFOPFORAESTADO] [dbo].[ICODIGO] NULL,
 CONSTRAINT [PK_CAD_PRODUTOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_DESCRICAO] UNIQUE NONCLUSTERED 
(
	[DESCRICAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_REFERENCIA] UNIQUE NONCLUSTERED 
(
	[REFERENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PRODUTOS_CODBARRA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PRODUTOS_CODBARRA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[EAN13] [dbo].[SCODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PRODUTOS_FOTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PRODUTOS_FOTOS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[FOTO_PATH] [dbo].[SNOME] NULL,
	[FOTO_FRENTE_PATH] [dbo].[SNOME] NULL,
	[FOTO_COSTA_PATH] [dbo].[SNOME] NULL,
	[FOTO_PEFIL_DIREITO_PATH] [dbo].[SNOME] NULL,
	[FOTO_PEFIL_ESQUERDO_PATH] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PRODUTOS_GRADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PRODUTOS_GRADES](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[ULTIMAATUALIZACAO] [dbo].[SDATE] NULL,
	[SEQUENCIA] [dbo].[IQUANTIDADE] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[DATAINVENTARIO] [dbo].[SDATE] NULL,
	[QUANTIDADEINVENTARIO] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PRODUTOS_GRADESQUALIDADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PRODUTOS_GRADESQUALIDADES](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[ULTIMAATUALIZACAO] [dbo].[SDATE] NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[QUALIDADE] [dbo].[ICODIGO] NULL,
	[SEQUENCIA] [dbo].[IQUANTIDADE] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[DATAINVENTARIO] [dbo].[SDATE] NULL,
	[QUANTIDADEINVENTARIO] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PRODUTOS_HISTORICO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PRODUTOS_HISTORICO](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA_ENTERIOR] [dbo].[SCODIGO] NULL,
	[REFERENCIA_NOVA] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[HORA] [dbo].[HORAS] NULL,
	[DESCRICAO_ANTERIOR] [dbo].[SNOME] NULL,
	[DESCRICAO_NOVA] [dbo].[SNOME] NULL,
	[PRECO_CUSTO_ANTERIOR] [dbo].[VALOR] NULL,
	[PRECO_CUSTO_NOVO] [dbo].[VALOR] NULL,
	[PRECO_VENDA_ANTERIOR] [dbo].[VALOR] NULL,
	[PRECO_VENDA_NOVO] [dbo].[VALOR] NULL,
	[ESTOQUE_ANTERIOR] [dbo].[FQUANTIDADE] NULL,
	[ESTOQUE_NOVO] [dbo].[FQUANTIDADE] NULL,
	[USUARIO] [dbo].[SCODIGO] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PRODUTOS_MOVIMENTACAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[OP_LOTE] [dbo].[ICODIGO] NOT NULL,
	[DATA_OP] [date] NULL,
	[PEDIDO] [dbo].[ICODIGO] NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[VENDEDOR] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QTDE_PRODUZIR] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZIDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZINDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_VENDIDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_ESTOQUE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_ESTOQUEREAL] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZIR_DEMANDA] [dbo].[IQUANTIDADE] NULL,
	[VALOR_UNIT] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_PRODUTOS_TIPO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_PRODUTOS_TIPO](
	[CODIGO] [dbo].[SCODIGO] NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_CAD_PRODUTOS_TIPO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_QUALIDADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_QUALIDADES](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_REGIOES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_REGIOES](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_SITUACAO_TRIBUTARIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_SITUACAO_TRIBUTARIA](
	[CODIGO] [dbo].[SCODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NOT NULL,
 CONSTRAINT [PK_CAD_SITTRIBUTARIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_SUBGRUPO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_SUBGRUPO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_CAD_SUBGRUPO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_TAMANHOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_TAMANHOS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_TURNO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_TURNO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[TOLERANCIA] [dbo].[FHORAS] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_TURNO_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_TURNO_GRADE](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[DIA_SEMANA] [dbo].[SCODIGO] NULL,
	[TURNO1_HORA_INI] [dbo].[FHORAS] NULL,
	[TURNO1_HORA_FIM] [dbo].[FHORAS] NULL,
	[TURNO2_HORA_INI] [dbo].[FHORAS] NULL,
	[TURNO2_HORA_FIM] [dbo].[FHORAS] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_UF_IMPOSTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_UF_IMPOSTOS](
	[SIGLA] [dbo].[UF_ESTADO] NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[ICMS] [dbo].[PERCENTUAL] NULL,
	[ICMS_PFISICA] [dbo].[PERCENTUAL] NULL,
	[ISS] [dbo].[PERCENTUAL] NULL,
	[IPI] [dbo].[PERCENTUAL] NULL,
	[IR] [dbo].[PERCENTUAL] NULL,
	[RETER_PIS] [dbo].[BOOLEAN] NULL,
	[RETER_COFINS] [dbo].[BOOLEAN] NULL,
	[RETER_CSLL] [dbo].[BOOLEAN] NULL,
	[RETER_INSS] [dbo].[BOOLEAN] NULL,
PRIMARY KEY CLUSTERED 
(
	[SIGLA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_UNIDADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_UNIDADE](
	[CODIGO] [dbo].[SCODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_CAD_UNIDADE] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CARTA_COBRANCA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CARTA_COBRANCA](
	[CODIGO] [int] NOT NULL,
	[NOME] [varchar](200) NULL,
	[TEXTO] [varchar](5000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CARTA_EMITIR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CARTA_EMITIR](
	[CODIGO] [int] NOT NULL,
	[CARTA] [int] NOT NULL,
	[CLIENTE] [int] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[HORA] [time](7) NULL,
	[TEXTO] [varchar](5000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRA_PEDIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPRA_PEDIDOS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DATA_ENTREGA] [dbo].[SDATE] NULL,
	[REQUISICAO] [dbo].[ICODIGO] NULL,
	[FORNECEDOR] [dbo].[ICODIGO] NULL,
	[FORNECEDORPEDIDO] [dbo].[SCODIGO] NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[USUARIO] [dbo].[ICODIGO] NULL,
	[QTDE_PEDIDA] [dbo].[FQUANTIDADE] NULL,
	[QTDE_ENTREGUE] [dbo].[FQUANTIDADE] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[FRETE_VALOR] [dbo].[VALOR] NULL,
	[FRETE_TIPO] [dbo].[SCODIGO] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[EFETIVADO] [dbo].[BOOLEAN] NULL,
	[APROVADO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_COMPRA_PEDIDOS] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRA_PEDIDOS_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[COMPRA_PEDIDOS_ITENS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[PRODUTO] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QTDE_PEDIDA] [dbo].[FQUANTIDADE] NULL,
	[QTDE_ENTREGUE] [dbo].[FQUANTIDADE] NULL,
	[QTDE_RESTANTE]  AS ([QTDE_PEDIDA]-[QTDE_ENTREGUE]),
	[VALOR_UNIT] [dbo].[VALOR] NULL,
	[VALOR_TOTAL] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPRAS](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOTAFISCAL] [dbo].[SCODIGO] NOT NULL,
	[MODELO] [dbo].[SCODIGO] NOT NULL,
	[SERIE] [dbo].[SCODIGO] NOT NULL,
	[FORNECEDOR] [dbo].[ICODIGO] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[DATAENTRADA] [dbo].[SDATE] NOT NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NULL,
	[CENTROCUSTO] [dbo].[ICODIGO] NULL,
	[PEDIDOINTERNO] [dbo].[ICODIGO] NULL,
	[FORNECEDORPEDIDO] [dbo].[ICODIGO] NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NULL,
	[PLANO_CONTAS] [dbo].[SNOME] NULL,
	[CFOP] [dbo].[ICODIGO] NULL,
	[LOTE] [dbo].[SCODIGO] NULL,
	[VALIDADE] [dbo].[SDATE] NULL,
	[ICMS_BASECALCULO] [dbo].[VALOR] NULL,
	[ICMS_VALOR] [dbo].[VALOR] NULL,
	[ICMS_BASECALCULO_SUBSTITUICAO] [dbo].[VALOR] NULL,
	[ICMS_VALOR_SUBSTITUICAO] [dbo].[VALOR] NULL,
	[ICMS_REDUCAO] [dbo].[VALOR] NULL,
	[ICMS_REDUCAO_VALOR] [dbo].[VALOR] NULL,
	[IPI_BASECALCULO] [dbo].[VALOR] NULL,
	[IPI_VALOR] [dbo].[VALOR] NULL,
	[ISS] [dbo].[VALOR] NULL,
	[ISS_BASECALCULO] [dbo].[PERCENTUAL] NULL,
	[ISS_VALOR] [dbo].[VALOR] NULL,
	[PFRETE] [dbo].[VALOR] NULL,
	[PFRETE_VALOR] [dbo].[VALOR] NULL,
	[VLR_SEGURO] [dbo].[VALOR] NULL,
	[VLR_DESPESAS_ASSESSORIAS] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL,
	[VLR_RECEBIDO] [dbo].[VALOR] NULL,
	[TROCO] [dbo].[VALOR] NULL,
	[VLR_CAIXA] [dbo].[VALOR] NULL,
	[FRETE] [dbo].[SCODIGO] NULL,
	[FRETE_QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[FRETE_ESPECIE] [dbo].[SCODIGO] NULL,
	[FRETE_MARCA] [dbo].[SCODIGO] NULL,
	[FRETE_NUMERO] [dbo].[SCODIGO] NULL,
	[FRETE_PBRUTO] [dbo].[VALOR] NULL,
	[FRETE_PLIQUIDO] [dbo].[VALOR] NULL,
	[FRETE_VALOR] [dbo].[VALOR] NULL,
	[QTDE_PRODUTOS] [dbo].[IQUANTIDADE] NULL,
	[VALOR_PRODUTOS] [dbo].[VALOR] NULL,
	[TOTAL_NF] [dbo].[VALOR] NULL,
	[ATUALIZADO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_COMPRAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[NOTAFISCAL] ASC,
	[MODELO] ASC,
	[SERIE] ASC,
	[FORNECEDOR] ASC,
	[DATA] ASC,
	[DATAENTRADA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRAS_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPRAS_ITENS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[NOTAFISCAL] [dbo].[SCODIGO] NULL,
	[MODELO] [dbo].[SCODIGO] NULL,
	[SERIE] [dbo].[SCODIGO] NULL,
	[FORNECEDOR] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DATAENTRADA] [dbo].[SDATE] NULL,
	[LOTE] [dbo].[SCODIGO] NULL,
	[VALIDADE] [dbo].[SDATE] NULL,
	[PRODUTO] [dbo].[SCODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SCODIGO] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[CLASSIFICAO_FISCAL] [dbo].[SCODIGO] NULL,
	[SITUACAO_TRIBUTARIA] [dbo].[SCODIGO] NULL,
	[ICMS] [dbo].[VALOR] NULL,
	[ICMS_BASECALCULO] [dbo].[VALOR] NULL,
	[ICMS_VALOR] [dbo].[VALOR] NULL,
	[ICMS_REDUCAO] [dbo].[VALOR] NULL,
	[ICMS_REDUCAO_VALOR] [dbo].[VALOR] NULL,
	[IPI] [dbo].[VALOR] NULL,
	[IPI_BASECALCULO] [dbo].[VALOR] NULL,
	[IPI_VALOR] [dbo].[VALOR] NULL,
	[VLR_DESPESAS_ASSESSORIAS] [dbo].[VALOR] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL,
	[VL_UNITARIO] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[DESCONTO_VLR] [dbo].[VALOR] NULL,
	[MARKUP] [dbo].[PERCENTUAL] NULL,
	[MG_LUCRO] [dbo].[PERCENTUAL] NULL,
	[PRC_VENDA] [dbo].[VALOR] NULL,
	[PFRETE] [dbo].[PERCENTUAL] NULL,
	[PFRETE_VALOR] [dbo].[VALOR] NULL,
	[VL_TOTAL] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRAS_ITENS_GRADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPRAS_ITENS_GRADES](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[SEQUENCIA] [dbo].[IQUANTIDADE] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRAS_REQUISICAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPRAS_REQUISICAO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[SOLICITANTE] [dbo].[SNOME] NULL,
	[APROVADO] [dbo].[BOOLEAN] NULL,
	[USUARIO] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[EFETIVADO] [dbo].[BOOLEAN] NULL,
	[RESPONSAVEL] [dbo].[SNOME] NULL,
	[APROV_DATA] [dbo].[SDATE] NULL,
	[APROV_HORA] [dbo].[HORAS] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRAS_REQUISICAOITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPRAS_REQUISICAOITENS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[PRODUTO] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[VL_UNITARIO] [dbo].[VALOR] NULL,
	[VL_TOTAL] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONFIG_ETIQUETAS_LAYOUTS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[TIPOCODIGOBARRA] [dbo].[SNOME] NULL,
	[PG_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[PG_LARGURAINFINITA] [dbo].[BOOLEAN] NULL,
	[PG_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[PG_COMPRIMENTOINFINITO] [dbo].[BOOLEAN] NULL,
	[MG_TOPO] [dbo].[FQUANTIDADE] NULL,
	[MG_RODAPE] [dbo].[FQUANTIDADE] NULL,
	[MG_ESQUERDA] [dbo].[FQUANTIDADE] NULL,
	[MG_DIREITA] [dbo].[FQUANTIDADE] NULL,
	[FNT_NOME] [dbo].[SNOME] NULL,
	[FNT_TAMANHO] [dbo].[FQUANTIDADE] NULL,
	[COL_QUANTIDADES] [dbo].[FQUANTIDADE] NULL,
	[COL_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[COL_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[COL_DISTANCIA] [dbo].[FQUANTIDADE] NULL,
	[CB_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[CB_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[CB_COLUNA] [dbo].[FQUANTIDADE] NULL,
	[CB_LINHA] [dbo].[FQUANTIDADE] NULL,
	[CB_VISIVEL] [dbo].[BOOLEAN] NULL,
	[DSC_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[DSC_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[DSC_COLUNA] [dbo].[FQUANTIDADE] NULL,
	[DSC_LINHA] [dbo].[FQUANTIDADE] NULL,
	[DSC_VISIVEL] [dbo].[BOOLEAN] NULL,
	[DSC_FONTENOME] [dbo].[SNOME] NULL,
	[DSC_FONTETAMANHO] [dbo].[FQUANTIDADE] NULL,
	[FRN_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[FRN_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[FRN_COLUNA] [dbo].[FQUANTIDADE] NULL,
	[FRN_LINHA] [dbo].[FQUANTIDADE] NULL,
	[FRN_VISIVEL] [dbo].[BOOLEAN] NULL,
	[PRD_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[PRD_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[PRD_COLUNA] [dbo].[FQUANTIDADE] NULL,
	[PRD_LINHA] [dbo].[FQUANTIDADE] NULL,
	[PRD_VISIVEL] [dbo].[BOOLEAN] NULL,
	[UND_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[UND_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[UND_COLUNA] [dbo].[FQUANTIDADE] NULL,
	[UND_LINHA] [dbo].[FQUANTIDADE] NULL,
	[UND_VISIVEL] [dbo].[BOOLEAN] NULL,
	[TAM_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[TAM_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[TAM_COLUNA] [dbo].[FQUANTIDADE] NULL,
	[TAM_LINHA] [dbo].[FQUANTIDADE] NULL,
	[TAM_VISIVEL] [dbo].[BOOLEAN] NULL,
	[VLR_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[VLR_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[VLR_COLUNA] [dbo].[FQUANTIDADE] NULL,
	[VLR_LINHA] [dbo].[FQUANTIDADE] NULL,
	[VLR_VISIVEL] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_CONFIGETIQUETALAYOUT] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONFIG_ETIQUETAS_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[DRIVER] [dbo].[SNOME] NULL,
	[PORTA] [dbo].[SNOME] NULL,
	[AVANCOPAPEL] [dbo].[IQUANTIDADE] NULL,
	[CODBARRAS_TIPO] [dbo].[SNOME] NULL,
	[CODBARRAS_ALTURA] [dbo].[IQUANTIDADE] NULL,
	[L_DESCRICAO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[L_DESCRICAO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[L_DESCRICAO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[L_DESCRICAO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[L_CODBARRAS_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[L_CODBARRAS_EXIBECODIGO] [dbo].[BOOLEAN] NULL,
	[L_CODBARRAS_LINHA] [dbo].[IQUANTIDADE] NULL,
	[L_CODBARRAS_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[L_CODIGO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[L_CODIGO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[L_CODIGO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[L_CODIGO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[L_COR_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[L_COR_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[L_COR_LINHA] [dbo].[IQUANTIDADE] NULL,
	[L_COR_FONTE] [dbo].[IQUANTIDADE] NULL,
	[L_TAMANHO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[L_TAMANHO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[L_TAMANHO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[L_TAMANHO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[L_PRECO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[L_PRECO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[L_PRECO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[L_PRECO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R_DESCRICAO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R_DESCRICAO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R_DESCRICAO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R_DESCRICAO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R_CODBARRAS_TIPO] [dbo].[SNOME] NULL,
	[R_CODBARRAS_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R_CODBARRAS_EXIBECODIGO] [dbo].[BOOLEAN] NULL,
	[R_CODBARRAS_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R_CODBARRAS_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R_CODBARRAS_ALTURA] [dbo].[IQUANTIDADE] NULL,
	[R_CODIGO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R_CODIGO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R_CODIGO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R_CODIGO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R_COR_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R_COR_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R_COR_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R_COR_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R_TAMANHO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R_TAMANHO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R_TAMANHO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R_TAMANHO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R_PRECO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R_PRECO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R_PRECO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R_PRECO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R3_DESCRICAO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R3_DESCRICAO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R3_DESCRICAO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R3_DESCRICAO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R3_CODBARRAS_TIPO] [dbo].[SNOME] NULL,
	[R3_CODBARRAS_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R3_CODBARRAS_EXIBECODIGO] [dbo].[BOOLEAN] NULL,
	[R3_CODBARRAS_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R3_CODBARRAS_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R3_CODBARRAS_ALTURA] [dbo].[IQUANTIDADE] NULL,
	[R3_CODIGO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R3_CODIGO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R3_CODIGO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R3_CODIGO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R3_COR_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R3_COR_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R3_COR_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R3_COR_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R3_TAMANHO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R3_TAMANHO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R3_TAMANHO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R3_TAMANHO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R3_PRECO_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R3_PRECO_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R3_PRECO_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R3_PRECO_FONTE] [dbo].[IQUANTIDADE] NULL,
	[CODBARRAS_LARGURA] [dbo].[IQUANTIDADE] NULL,
	[CODBARRAS_LARGURABARRAS] [dbo].[IQUANTIDADE] NULL,
	[L_OP_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[L_OP_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[L_OP_LINHA] [dbo].[IQUANTIDADE] NULL,
	[L_OP_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R_OP_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R_OP_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R_OP_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R_OP_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R3_OP_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R3_OP_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R3_OP_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R3_OP_FONTE] [dbo].[IQUANTIDADE] NULL,
	[L_LOTE_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[L_LOTE_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[L_LOTE_LINHA] [dbo].[IQUANTIDADE] NULL,
	[L_LOTE_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R_LOTE_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R_LOTE_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R_LOTE_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R_LOTE_FONTE] [dbo].[IQUANTIDADE] NULL,
	[R3_LOTE_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[R3_LOTE_COLUNA] [dbo].[IQUANTIDADE] NULL,
	[R3_LOTE_LINHA] [dbo].[IQUANTIDADE] NULL,
	[R3_LOTE_FONTE] [dbo].[IQUANTIDADE] NULL,
 CONSTRAINT [PK_CONFIG_ETIQUETAS_PRODUTOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONFIG_ETIQUETAS01_TEMP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIG_ETIQUETAS01_TEMP](
	[DESCRICAO] [dbo].[SNOME] NULL,
	[CODIGOFORNECEDOR] [dbo].[SCODIGO] NULL,
	[FORNECEDOR] [dbo].[SNOME] NULL,
	[GRUPO] [dbo].[SCODIGO] NULL,
	[CODIGOBARRA] [dbo].[SCODIGO] NULL,
	[CODIGOPRODUTO] [dbo].[SCODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[UNIDADE] [dbo].[SCODIGO] NULL,
	[PRECO] [dbo].[VALOR] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONFIG_LICENCIAMENTO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIG_LICENCIAMENTO](
	[TIPO] [dbo].[SCODIGO] NULL,
	[DATA_ATIVACAO] [dbo].[SDATE] NULL,
	[VALIDADE_ATIVACAO] [dbo].[SDATE] NULL,
	[LIBERADO] [dbo].[BOOLEAN] NULL,
	[EMAIL] [dbo].[SNOME] NULL,
	[LIMITE_USUARIOS] [dbo].[ICODIGO] NULL,
	[SISTEMA_NOME] [dbo].[SNOME] NULL,
	[SISTEMA_VERSAO] [dbo].[SNOME] NULL,
	[SISTEMA_DESCRICAO] [dbo].[SNOME] NULL,
	[SISTEMA_TIPO] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONFIG_PAF_PDV]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIG_PAF_PDV](
	[PORTACOM] [dbo].[SCODIGO] NULL,
	[CFOP_BALCAO] [dbo].[ICODIGO] NULL,
	[CFOP_CUPOM] [dbo].[ICODIGO] NULL,
	[PROX_NUMCUPOM] [dbo].[ICODIGO] NULL,
	[PROX_NUMNF] [dbo].[ICODIGO] NULL,
	[MODELO] [dbo].[SCODIGO] NULL,
	[SERIE_NF] [dbo].[SCODIGO] NULL,
	[QT_ITENSNF] [dbo].[ICODIGO] NULL,
	[MSG_CUPOM] [dbo].[SCODIGO] NULL,
	[CLIENTE_PADRAO] [dbo].[ICODIGO] NULL,
	[VENDEDOR_PADRAO] [dbo].[ICODIGO] NULL,
	[ICMS_ALIQ] [dbo].[PERCENTUAL] NULL,
	[IPI_ALIQ] [dbo].[PERCENTUAL] NULL,
	[ISS_ALIQ] [dbo].[PERCENTUAL] NULL,
	[MODELO_ECF] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONFIG_PARAMETROS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIG_PARAMETROS](
	[EMPRESA] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[EMPRESA_NOME] [dbo].[SNOME] NOT NULL,
	[EMPRESA_NOME_FANTASIA] [dbo].[SNOME] NULL,
	[EMPRESA_CNPJ] [dbo].[SCODIGO] NULL,
	[EMPRESA_IE] [dbo].[SCODIGO] NULL,
	[EMPRESA_IEMUNICIPAL] [dbo].[SCODIGO] NULL,
	[EMPRESA_ENDERECO] [dbo].[SNOME] NULL,
	[EMPRESA_NUMERO] [dbo].[SCODIGO] NULL,
	[EMPRESA_BAIRRO] [dbo].[SNOME] NULL,
	[EMPRESA_COMPLEMENTO] [dbo].[SNOME] NULL,
	[EMPRESA_CEP] [dbo].[SCODIGO] NULL,
	[EMPRESA_FONE] [dbo].[SCODIGO] NULL,
	[EMPRESA_FAX] [dbo].[SCODIGO] NULL,
	[EMPRESA_EMAIL] [dbo].[SNOME] NULL,
	[EMPRESA_SITE] [dbo].[SNOME] NULL,
	[EMPRESA_CONTATO] [dbo].[SNOME] NULL,
	[EMPRESA_CODIGOCIDADE] [dbo].[ICODIGO] NULL,
	[EMPRESA_CIDADE] [dbo].[SNOME] NULL,
	[EMPRESA_UF] [dbo].[SCODIGO] NULL,
	[EMPRESA_CODIGOPAIS] [dbo].[ICODIGO] NULL,
	[EMPRESA_NOMEPAIS] [dbo].[SNOME] NULL,
	[EMPRESA_REGIMETRIBUTARIO] [dbo].[ICODIGO] NULL,
	[EMPRESA_REGIMETRIBUTARIOALIQUOTA] [dbo].[VALOR] NULL,
	[PRODUTO_CODIFICACAO] [dbo].[SCODIGO] NULL,
	[PRODUTO_SEPARADOR] [dbo].[SCODIGO] NULL,
	[PRODUTO_GRUPO] [dbo].[ICODIGO] NULL,
	[PRODUTO_SUBGRUPO] [dbo].[ICODIGO] NULL,
	[PRODUTO_PRODUTO] [dbo].[ICODIGO] NULL,
	[PRODUTO_ESTOQUENEGATIVO] [dbo].[BOOLEAN] NULL,
	[PRODUTO_SITUACAO_TRIBUTARIA] [dbo].[SCODIGO] NULL,
	[PRODUTO_CLASSIFICACAO_FISCAL] [dbo].[SCODIGO] NULL,
	[PRODUTO_NCM] [dbo].[SCODIGO] NULL,
	[PRODUTO_QUALIDADEPADRAO] [dbo].[ICODIGO] NULL,
	[FINANCEIRO_JUROS] [dbo].[PERCENTUAL] NULL,
	[FINANCEIRO_CARTORIO] [dbo].[PERCENTUAL] NULL,
	[FINANCEIRO_COBRANCADIAS] [dbo].[ICODIGO] NULL,
	[FINANCEIRO_VENDAVISTABAIXAR] [dbo].[BOOLEAN] NULL,
	[FINANCEIRO_DIASBLOQUEIO] [dbo].[ICODIGO] NULL,
	[FINANCEIRO_PAGAR_LANCARCAIXA] [dbo].[BOOLEAN] NULL,
	[FINANCEIRO_PAGAR_LANCARBANCO] [dbo].[BOOLEAN] NULL,
	[FINANCEIRO_PAGAR_COMISSAO] [dbo].[SCODIGO] NULL,
	[FINANCEIRO_PAGAR_CONTACAIXA] [dbo].[ICODIGO] NULL,
	[FINANCEIRO_PAGAR_PLANOCONTAS] [dbo].[SCODIGO] NULL,
	[FINANCEIRO_PAGAR_COMISSAOVENCIMENTO] [dbo].[ICODIGO] NULL,
	[FINANCEIRO_PAGAR_COMISSAOCONTACAIXA] [dbo].[ICODIGO] NULL,
	[FINANCEIRO_PAGAR_COMISSAOCENTROCUSTO] [dbo].[ICODIGO] NULL,
	[FINANCEIRO_PAGAR_COMISSAOPLANOCONTA] [dbo].[SCODIGO] NULL,
	[FINANCEIRO_RECEBER_LANCARCAIXA] [dbo].[BOOLEAN] NULL,
	[FINANCEIRO_RECEBER_LANCARBANCO] [dbo].[BOOLEAN] NULL,
	[FINANCEIRO_RECEBER_CONTACAIXA] [dbo].[ICODIGO] NULL,
	[FINANCEIRO_RECEBER_PLANOCONTAS] [dbo].[SCODIGO] NULL,
	[FINANCEIRO_BALCAO_LANCARCAIXA] [dbo].[BOOLEAN] NULL,
	[COMPRAS_PLANOCONTAS] [dbo].[SCODIGO] NULL,
	[COMPRAS_CFOP] [dbo].[ICODIGO] NULL,
	[COMPRAS_FORNECEDOR] [dbo].[ICODIGO] NULL,
	[ALERTA_ESTOQUE] [dbo].[BOOLEAN] NULL,
	[ALERTA_CTARECEBER] [dbo].[BOOLEAN] NULL,
	[ALERTA_CTARECEBER_DIAS] [dbo].[ICODIGO] NULL,
	[ALERTA_CTAPAGAR] [dbo].[BOOLEAN] NULL,
	[ALERTA_CTAPAGAR_DIAS] [dbo].[ICODIGO] NULL,
	[ALERTA_PEDIDOS] [dbo].[BOOLEAN] NULL,
	[ALERTA_COBRANCA] [dbo].[BOOLEAN] NULL,
	[ALERTA_VALIDADE] [dbo].[BOOLEAN] NULL,
	[ALERTA_VALIDADE_DIAS] [dbo].[ICODIGO] NULL,
	[ALERTA_PEDIDOSCOMPRAS] [dbo].[BOOLEAN] NULL,
	[CFOP_VENDA_UF_INTERNO] [dbo].[ICODIGO] NULL,
	[CFOP_VENDA_UF_EXTERNO] [dbo].[ICODIGO] NULL,
	[CFOP_DEVOLUCAO_UF_INTERNO] [dbo].[ICODIGO] NULL,
	[CFOP_DEVOLUCAO_UF_EXTERNO] [dbo].[ICODIGO] NULL,
	[CFOP_COMPRA_UF_INTERNO] [dbo].[ICODIGO] NULL,
	[CFOP_COMPRA_UF_EXTERNO] [dbo].[ICODIGO] NULL,
	[NFE_AMBIENTE] [dbo].[SCODIGO] NULL,
	[NFE_TIPODANFE] [dbo].[SCODIGO] NULL,
	[NFE_FORMAEMISSAO] [dbo].[SCODIGO] NULL,
	[NFE_MODELO] [dbo].[ICODIGO] NULL,
	[NFE_SERIE] [dbo].[ICODIGO] NULL,
	[NFE_SEQUENCIA] [dbo].[ICODIGO] NULL,
	[NFE_LOTE] [dbo].[ICODIGO] NULL,
	[SISTEMA_DATABASE] [dbo].[SDATE] NULL,
	[SISTEMA_LOGO_PRINCIPAL] [dbo].[SNOME] NULL,
	[SISTEMA_LOGO_RELATORIOS] [dbo].[SNOME] NULL,
	[CLIENTE_INATIVIDADE] [dbo].[ICODIGO] NULL,
	[CLIENTE_ATRASOPERMITIDO] [dbo].[ICODIGO] NULL,
	[VENDA_VENDEDOR] [dbo].[ICODIGO] NULL,
	[VENDA_CLIENTE] [dbo].[ICODIGO] NULL,
	[VENDA_IMPRIMEFATURA] [dbo].[BOOLEAN] NULL,
	[PEDIDO_ENTREGA] [dbo].[ICODIGO] NULL,
	[PEDIDO_BAIXAESTOQUE] [dbo].[BOOLEAN] NULL,
	[PEDIDO_MENSAGEM] [dbo].[TEXTO] NULL,
	[FRETEPADRAO] [dbo].[ICODIGO] NULL,
	[TERCEIRIZADO_DIAVENCIMENTO] [dbo].[ICODIGO] NULL,
	[PRODUCAOFINALIZAR] [dbo].[SCODIGO] NULL,
 CONSTRAINT [PK_CONFIG_PARAMETROS] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONFIG_PARAMETROS_PCP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIG_PARAMETROS_PCP](
	[MESA_CORTE_COMPRIMENTO] [dbo].[FQUANTIDADE] NULL,
	[MESA_CORTE_LARGURA] [dbo].[FQUANTIDADE] NULL,
	[OP_AUTOMATICA] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTRL_BANCARIO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTRL_BANCARIO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[CTA_CORRENTE] [dbo].[ICODIGO] NULL,
	[CONTACAIXA] [dbo].[ICODIGO] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[PLN_CONTA] [dbo].[SCODIGO] NULL,
	[DC] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[MES] [dbo].[IQUANTIDADE] NULL,
	[ANO] [dbo].[IQUANTIDADE] NULL,
	[HISTORICO] [dbo].[SNOME] NULL,
	[VLR_CREDITO] [dbo].[VALOR] NULL,
	[VLR_DEBITO] [dbo].[VALOR] NULL,
	[EFETIVADO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK__CTRL_BAN__CC87E1272BC97F7C] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTRL_BANCARIO_SALDO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTRL_BANCARIO_SALDO](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[TIPO] [dbo].[SCODIGO] NULL,
	[PLN_CONTA_CLASSE] [dbo].[ICODIGO] NULL,
	[PLN_CONTA] [dbo].[SCODIGO] NULL,
	[HISTORICO] [dbo].[SNOME] NULL,
	[CTA_CORRENTE] [dbo].[ICODIGO] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[CREDITO] [dbo].[VALOR] NULL,
	[DEBITO] [dbo].[VALOR] NULL,
	[SALDO] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTRL_CAIXA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTRL_CAIXA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[CONTACAIXA] [dbo].[ICODIGO] NULL,
	[PLN_CONTA_CLASSE] [dbo].[ICODIGO] NULL,
	[PLN_CONTA] [dbo].[SCODIGO] NULL,
	[DC] [dbo].[SCODIGO] NULL,
	[HISTORICO] [dbo].[SNOME] NULL,
	[VLR_CREDITO] [dbo].[VALOR] NULL,
	[VLR_DEBITO] [dbo].[VALOR] NULL,
	[MES] [dbo].[ICODIGO] NULL,
	[ANO] [dbo].[ICODIGO] NULL,
	[FORMA_PAGTO] [dbo].[ICODIGO] NULL,
	[EFETIVADO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK__CTRL_CAI__CC87E1273A4CA8FD] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTRL_CAIXA_SALDO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTRL_CAIXA_SALDO](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[TIPO] [dbo].[SCODIGO] NULL,
	[PLN_CONTA_CLASSE] [dbo].[ICODIGO] NULL,
	[PLN_CONTA] [dbo].[SCODIGO] NULL,
	[HISTORICO] [dbo].[SNOME] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[CREDITO] [dbo].[VALOR] NULL,
	[DEBITO] [dbo].[VALOR] NULL,
	[SALDO] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTRL_NFS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTRL_NFS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NUMERO] [dbo].[ICODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[MODELO] [dbo].[SCODIGO] NULL,
	[SERIE] [dbo].[SCODIGO] NULL,
	[DT_PRIMEFAT] [dbo].[SDATE] NULL,
	[DT_ULTIMANF] [dbo].[SDATE] NULL,
	[HR_ULTIMANF] [varchar](8) NULL,
	[AVANCO] [int] NULL,
	[LARGURA] [int] NULL,
	[COMPRIMENTO] [int] NULL,
	[QTDE_LINHASITENS] [int] NULL,
	[QTDE_LINHASCABECALHO] [int] NULL,
	[QTDE_LINHASRODAPE] [int] NULL,
	[VISUALIZAR] [dbo].[BOOLEAN] NULL,
	[FATURAS_IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[FATURAS_QTDE_FAT_NF] [dbo].[ICODIGO] NULL,
	[FATURAS_QTDE_FAT_LINHAS] [dbo].[ICODIGO] NULL,
	[FATURAS_LINHA] [dbo].[ICODIGO] NULL,
	[FATURAS_COLUNA] [dbo].[ICODIGO] NULL,
	[FATURAS_COMPRIMENTO] [dbo].[ICODIGO] NULL,
	[FATURAS_LARGURA] [dbo].[ICODIGO] NULL,
	[FATURAS_LARG_DOCUMENTO] [dbo].[ICODIGO] NULL,
	[FATURAS_LARG_DOC_DISTANCIA] [dbo].[ICODIGO] NULL,
	[FATURAS_LARG_VENCIMENTO] [dbo].[ICODIGO] NULL,
	[FATURAS_LARG_VENC_DISTANCIA] [dbo].[ICODIGO] NULL,
	[FATURAS_LARG_VALOR] [dbo].[ICODIGO] NULL,
	[FATURAS_LARG_ESPACAMENTO] [dbo].[ICODIGO] NULL,
 CONSTRAINT [PK__CTRL_NFS__CC87E1270F624AF8] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTRL_NFS_CAMPOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTRL_NFS_CAMPOS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[ORDEM] [dbo].[SCODIGO] NULL,
	[LINHA] [dbo].[ICODIGO] NULL,
	[COLUNA] [dbo].[ICODIGO] NULL,
	[CAMPO] [dbo].[SNOME] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[IMPRIMIR] [dbo].[BOOLEAN] NULL,
	[CARACTERES] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXPEDICAO_CONFERENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EXPEDICAO_CONFERENCIA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[PEDIDO] [dbo].[ICODIGO] NOT NULL,
	[NR_PEDIDO] [int] NULL,
	[DATA] [timestamp] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[VENDEDOR] [dbo].[ICODIGO] NULL,
	[STATUS] [dbo].[BOOLEAN] NULL,
	[QTDE_TOTAL] [dbo].[IQUANTIDADE] NULL,
	[VALOR_TOTAL] [dbo].[VALOR] NULL,
	[VOLUMES] [dbo].[IQUANTIDADE] NULL,
	[ESPECIE] [dbo].[SCODIGO] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[PEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXPEDICAO_CONFERENCIA_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EXPEDICAO_CONFERENCIA_ITENS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[PEDIDO] [dbo].[ICODIGO] NULL,
	[EXPEDICAO_PACOTE] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[QTDE_TOTAL] [dbo].[IQUANTIDADE] NULL,
	[VALOR_TOTAL] [dbo].[VALOR] NULL,
	[ESTOQUE] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXPEDICAO_ETIQUETAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EXPEDICAO_ETIQUETAS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[MARCA_NOME] [dbo].[SNOME] NULL,
	[MARCA_MODELO] [dbo].[SCODIGO] NULL,
	[PAGINA_C] [dbo].[VALOR] NULL,
	[PAGINA_L] [dbo].[VALOR] NULL,
	[COLUNAS] [dbo].[ICODIGO] NULL,
	[COLUNA_COMPRIMENTO] [dbo].[VALOR] NULL,
	[COLUNAS_ESPACOS] [dbo].[VALOR] NULL,
	[LINHAS_ESPACOS] [dbo].[VALOR] NULL,
	[MARGEM_TOPO] [dbo].[VALOR] NULL,
	[MARGEM_RODAPE] [dbo].[VALOR] NULL,
	[MARGEM_ESQUERDA] [dbo].[VALOR] NULL,
	[MARGEM_DIREITA] [dbo].[VALOR] NULL,
	[FONTE_NOME] [dbo].[SNOME] NULL,
	[FONTE_TAMANHO] [dbo].[VALOR] NULL,
	[SHOW_CODIGO] [dbo].[BOOLEAN] NULL,
	[SHOW_DESCRICAO] [dbo].[BOOLEAN] NULL,
	[SHOW_FORNECEDOR] [dbo].[BOOLEAN] NULL,
	[SHOW_CODBARRA] [dbo].[BOOLEAN] NULL,
	[SHOW_UNIDADE] [dbo].[BOOLEAN] NULL,
	[SHOW_TAMANHO] [dbo].[BOOLEAN] NULL,
	[SHOW_VALOR] [dbo].[BOOLEAN] NULL,
	[DESCRICAO_COLUNA] [dbo].[ICODIGO] NULL,
	[DESCRICAO_LINHA] [dbo].[ICODIGO] NULL,
	[FORNECEDOR_COLUNA] [dbo].[ICODIGO] NULL,
	[FORNECEDOR_LINHA] [dbo].[ICODIGO] NULL,
	[CODIGOBARRA_COLUNA] [dbo].[ICODIGO] NULL,
	[CODIGOBARRA_LINHA] [dbo].[ICODIGO] NULL,
	[CODIGOPRODUTO_COLUNA] [dbo].[ICODIGO] NULL,
	[CODIGOPRODUTO_LINHA] [dbo].[ICODIGO] NULL,
	[UNIDADE_COLUNA] [dbo].[ICODIGO] NULL,
	[UNIDADE_LINHA] [dbo].[ICODIGO] NULL,
	[TAMANHO_COLUNA] [dbo].[ICODIGO] NULL,
	[TAMANHO_LINHA] [dbo].[ICODIGO] NULL,
	[PRECO_COLUNA] [dbo].[ICODIGO] NULL,
	[PRECO_LINHA] [dbo].[ICODIGO] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXPEDICAO_PACOTE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EXPEDICAO_PACOTE](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[PEDIDO] [dbo].[ICODIGO] NOT NULL,
	[SEQUENCIA] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[STATUS] [varchar](1) NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[TIPO] [dbo].[SCODIGO] NULL,
	[QTDE_TOTAL] [dbo].[IQUANTIDADE] NULL,
	[VALOR_TOTAL] [dbo].[VALOR] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[PEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXPEDICAO_PACOTE_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EXPEDICAO_PACOTE_ITENS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[PEDIDO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[VALOR] [float] NULL,
	[VALOR_TOTAL] [float] NULL,
	[QTDE_TOTAL] [int] NULL,
	[BAIXADO] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_BORDERO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_BORDERO](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[EMISSAO] [dbo].[SCODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[CTACORRENTE] [dbo].[ICODIGO] NULL,
	[CONTACAIXA] [dbo].[ICODIGO] NULL,
	[CARTEIRA] [dbo].[ICODIGO] NULL,
	[PLN_CONTA] [dbo].[SCODIGO] NULL,
	[TITULOSQTDE] [dbo].[IQUANTIDADE] NULL,
	[TITULOSVALOR] [dbo].[VALOR] NULL,
	[TITULOSVALORBRUTO] [dbo].[VALOR] NULL,
	[JUROS] [dbo].[PERCENTUAL] NULL,
	[TARIFA] [dbo].[PERCENTUAL] NULL,
	[PRAZOMEDIO] [dbo].[IQUANTIDADE] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[VALORJUROS] [dbo].[VALOR] NULL,
	[VALORTARIFAS] [dbo].[VALOR] NULL,
 CONSTRAINT [PK_FIN_BORDERO] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_BORDEROLISTA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_BORDEROLISTA](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[CODIGOFINRECEBER] [dbo].[ICODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[CLIENTE_NOME] [dbo].[SNOME] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[VENCIMENTO] [dbo].[SDATE] NULL,
	[DIAS] [dbo].[IQUANTIDADE] NULL,
	[TIPO] [dbo].[SCODIGO] NULL,
	[VALOR] [dbo].[VALOR] NULL,
	[VALORLIQUIDO] [dbo].[VALOR] NULL,
	[VALORJUROS] [dbo].[VALOR] NULL,
	[VALORTARIFAS] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_COBRANCA_AGENDAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_COBRANCA_AGENDAR](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DATA_RETORNO] [dbo].[SDATE] NULL,
	[HORAS] [dbo].[HORAS] NULL,
	[CONTATO] [dbo].[SNOME] NULL,
	[CONTA] [dbo].[ICODIGO] NULL,
	[VALOR] [dbo].[VALOR] NULL,
	[RESPOSTA] [dbo].[TEXTO] NULL,
	[SITUACAO] [dbo].[BOOLEAN] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_COBRANCA_CARTA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_COBRANCA_CARTA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
	[TEXTO] [dbo].[TEXTO] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_COBRANCA_CARTAEMISSAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_COBRANCA_CARTAEMISSAO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[CARTA] [dbo].[ICODIGO] NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[HORA] [dbo].[HORAS] NULL,
	[TEXTO] [dbo].[TEXTO] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_COMISSOES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_COMISSOES](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DATA] [dbo].[SDATE] NULL,
	[VENCIMENTO] [dbo].[SDATE] NULL,
	[DATA_PAGTO] [dbo].[SDATE] NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[VENDEDOR] [dbo].[ICODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[NOTAFISCAL] [dbo].[ICODIGO] NULL,
	[CONFERENCIA] [dbo].[ICODIGO] NULL,
	[PEDIDO] [dbo].[ICODIGO] NULL,
	[PEDIDOPARALELO] [dbo].[SCODIGO] NULL,
	[FORMA_PAGTO] [dbo].[ICODIGO] NULL,
	[CONTACORRENTE] [dbo].[ICODIGO] NULL,
	[CONTACAIXA] [dbo].[ICODIGO] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[PLANO_CONTAS] [dbo].[SCODIGO] NULL,
	[ORIGEM] [dbo].[SCODIGO] NULL,
	[NATUREZA] [dbo].[SCODIGO] NULL,
	[DC] [dbo].[SCODIGO] NULL,
	[COMISSAO] [dbo].[PERCENTUAL] NULL,
	[VALOR_VENDA] [dbo].[VALOR] NULL,
	[VALOR] [dbo].[VALOR] NULL,
	[VALOR_PAGO] [dbo].[VALOR] NULL,
	[VALOR_SALDO] [dbo].[VALOR] NULL,
	[HISTORICO] [dbo].[TEXTO] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[ATRASADA] [dbo].[BOOLEAN] NULL,
	[QUITADO] [dbo].[BOOLEAN] NULL,
	[SELECIONADO] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_CONTA_CORRENTE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_CONTA_CORRENTE](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[BANCO] [dbo].[ICODIGO] NULL,
	[AGENCIA] [dbo].[SCODIGO] NULL,
	[AGENCIA_DIG] [dbo].[SCODIGO] NULL,
	[CTA_CORRENTE] [dbo].[SCODIGO] NULL,
	[CTA_CORRENTE_DIG] [dbo].[SCODIGO] NULL,
	[NOME_AGENCIA] [dbo].[SNOME] NULL,
	[NOME_CORRENTISTA] [dbo].[SNOME] NULL,
	[CONTATO] [dbo].[SNOME] NULL,
	[FONE] [dbo].[SCODIGO] NULL,
	[SALDOINICIAL] [dbo].[VALOR] NULL,
	[SALDO] [dbo].[VALOR] NULL,
	[STATUS] [dbo].[SCODIGO] NULL,
 CONSTRAINT [PK__FIN_CONT__CC87E1275CA1C101] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_CONTA_CORRENTE_BOLETO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_CONTA_CORRENTE_BOLETO](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[BANCO] [dbo].[ICODIGO] NULL,
	[BANCONOME] [dbo].[SCODIGO] NULL,
	[AGENCIA] [dbo].[SCODIGO] NULL,
	[AGENCIADIGITO] [dbo].[SCODIGO] NULL,
	[AGENCIANOME] [dbo].[SCODIGO] NULL,
	[CEDENTECODIGO] [dbo].[SCODIGO] NULL,
	[DIGITO] [dbo].[SCODIGO] NULL,
	[CARTEIRA] [dbo].[SCODIGO] NULL,
	[PROXIMONOSSONUMERO] [dbo].[SCODIGO] NULL,
	[INSTRUCOES] [dbo].[TEXTO] NULL,
	[TIPOINSCRICAO] [dbo].[SCODIGO] NULL,
	[NOME_CEDENTE] [dbo].[SNOME] NULL,
	[CNPJ_CEDENTE] [dbo].[SCODIGO] NULL,
	[CONVENIO] [dbo].[SCODIGO] NULL,
	[EXPORTAR] [dbo].[SCODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_COTACAOMOEDA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_COTACAOMOEDA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[ATUALIZACAO] [dbo].[SDATE] NULL,
	[FONTE] [dbo].[SNOME] NULL,
	[DOLAR] [dbo].[VALOR] NULL,
	[EURO] [dbo].[VALOR] NULL,
 CONSTRAINT [PK__FIN_COTA__CC87E12756E8E7AB] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_CTAPAGAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_CTAPAGAR](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[FORNECEDOR] [dbo].[ICODIGO] NOT NULL,
	[FORNECEDOR_NOME] [dbo].[SNOME] NULL,
	[NOTAFISCAL] [dbo].[ICODIGO] NOT NULL,
	[SERIENF] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[VENCIMENTO] [dbo].[SDATE] NULL,
	[DATA_PAGTO] [dbo].[SDATE] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NOT NULL,
	[REMESSA] [dbo].[ICODIGO] NULL,
	[PARCELA] [dbo].[ICODIGO] NULL,
	[CFOP] [dbo].[ICODIGO] NULL,
	[ESPECIE] [dbo].[SCODIGO] NULL,
	[TIPO] [dbo].[SCODIGO] NULL,
	[VALOR] [dbo].[VALOR] NULL,
	[VALOR_PAGO] [dbo].[VALOR] NULL,
	[VALOR_SALDO] [dbo].[VALOR] NULL,
	[CONTA_CREDITO] [dbo].[ICODIGO] NULL,
	[CHQ_BANCO] [dbo].[SCODIGO] NULL,
	[CHQ_AGENCIA] [dbo].[SCODIGO] NULL,
	[CHQ_CONTA_CORRENTE] [dbo].[SCODIGO] NULL,
	[CHQ_CODCIDADE] [dbo].[SNOME] NULL,
	[CHQ_NOMECIDADE_UF] [dbo].[SNOME] NULL,
	[CHQ_EMITENTE] [dbo].[SNOME] NULL,
	[CHQ_DESTINO] [dbo].[SNOME] NULL,
	[FORMA_PAGTO] [dbo].[ICODIGO] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[DESCONTOVALOR] [dbo].[VALOR] NULL,
	[PLANO_CONTAS] [dbo].[SNOME] NULL,
	[CONTACAIXA] [dbo].[ICODIGO] NULL,
	[HISTORICO] [dbo].[TEXTO] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[GERARRECIBO] [dbo].[SCODIGO] NULL,
	[NOSSONUMERO] [dbo].[SCODIGO] NULL,
	[DESPESAS_BOLETO] [dbo].[VALOR] NULL,
	[DESPESAS_JUROS] [dbo].[PERCENTUAL] NULL,
	[DESPESAS_JUROSVALOR] [dbo].[VALOR] NULL,
	[DESPESAS_MULTA] [dbo].[PERCENTUAL] NULL,
	[DESPESAS_CARTORIO] [dbo].[VALOR] NULL,
	[DESPESAS_TOTAL] [dbo].[VALOR] NULL,
	[ATRASADA] [dbo].[BOOLEAN] NULL,
	[QUITADO] [dbo].[BOOLEAN] NULL,
	[MOTIVO_BAIXA] [dbo].[ICODIGO] NULL,
	[USER_NOME] [dbo].[SNOME] NULL,
	[USER_DATA] [dbo].[SDATE] NULL,
	[USER_HORA] [dbo].[HORAS] NULL,
	[COMPLEMENTAR] [dbo].[BOOLEAN] NULL,
	[CHECADO] [dbo].[BOOLEAN] NULL,
	[PAGTOTERCEIRIZADO] [dbo].[BOOLEAN] NULL,
	[PROTESTOSTATUS] [dbo].[SCODIGO] NULL,
	[SELECIONADO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_FIN_CTAPAGAR] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_CTAPAGAR_SALDO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_CTAPAGAR_SALDO](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[VENCIMENTO] [dbo].[SDATE] NULL,
	[DATA_PAGTO] [dbo].[SDATE] NULL,
	[DIAS_ATRASO] [dbo].[ICODIGO] NULL,
	[VALOR] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_CTARECEBER]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_CTARECEBER](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[NOTAFISCAL] [dbo].[ICODIGO] NULL,
	[SERIENF] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[VENCIMENTO] [dbo].[SDATE] NULL,
	[DATA_PAGTO] [dbo].[SDATE] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[PARCELA] [dbo].[ICODIGO] NULL,
	[CFOP] [dbo].[ICODIGO] NULL,
	[VENDEDOR] [dbo].[ICODIGO] NULL,
	[ESPECIE] [dbo].[SCODIGO] NULL,
	[TIPO] [dbo].[SCODIGO] NULL,
	[VALOR] [dbo].[VALOR] NULL,
	[VALOR_PAGO] [dbo].[VALOR] NULL,
	[VALOR_SALDO] [dbo].[VALOR] NULL,
	[CONTA_CREDITO] [dbo].[ICODIGO] NULL,
	[CHQ_BANCO] [dbo].[SCODIGO] NULL,
	[CHQ_AGENCIA] [dbo].[SCODIGO] NULL,
	[CHQ_CONTA_CORRENTE] [dbo].[SCODIGO] NULL,
	[CHQ_NUMEROCHEQUE] [dbo].[SCODIGO] NULL,
	[CHQ_CODCIDADE] [dbo].[SNOME] NULL,
	[CHQ_EMITENTE] [dbo].[SNOME] NULL,
	[CHQ_NOMECIDADE_UF] [dbo].[SNOME] NULL,
	[CHQ_DESTINO] [dbo].[SNOME] NULL,
	[FORMA_PAGTO] [dbo].[ICODIGO] NULL,
	[DEPARTAMENTO] [dbo].[ICODIGO] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[DESCONTOVALOR] [dbo].[VALOR] NULL,
	[DESCONTO_DATA] [dbo].[SDATE] NULL,
	[DESCONTO_USER] [dbo].[ICODIGO] NULL,
	[ENTRADA] [dbo].[VALOR] NULL,
	[PLANO_CONTAS] [dbo].[SCODIGO] NULL,
	[CONTACAIXA] [dbo].[ICODIGO] NULL,
	[CARTEIRA] [dbo].[ICODIGO] NULL,
	[HISTORICO] [dbo].[TEXTO] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[GERARRECIBO] [dbo].[SCODIGO] NULL,
	[GERARDUPLICATA] [dbo].[BOOLEAN] NULL,
	[GERARBOLETO] [dbo].[BOOLEAN] NULL,
	[GERARCOMPLEMENTO] [dbo].[BOOLEAN] NULL,
	[GERARREMESSA] [dbo].[BOOLEAN] NULL,
	[NOSSONUMERO] [dbo].[SCODIGO] NULL,
	[DESPESAS_BOLETO] [dbo].[VALOR] NULL,
	[DESPESAS_JUROS] [dbo].[PERCENTUAL] NULL,
	[DESPESAS_JUROSVALOR] [dbo].[VALOR] NULL,
	[DESPESAS_MULTA] [dbo].[PERCENTUAL] NULL,
	[DESPESAS_CARTORIO] [dbo].[VALOR] NULL,
	[DESPESAS_TOTAL] [dbo].[VALOR] NULL,
	[ATRASADA] [dbo].[BOOLEAN] NULL,
	[QUITADO] [dbo].[BOOLEAN] NULL,
	[MOTIVO_BAIXA] [dbo].[ICODIGO] NULL,
	[USER_NOME] [dbo].[SNOME] NULL,
	[USER_DATA] [dbo].[SDATE] NULL,
	[USER_HORA] [dbo].[HORAS] NULL,
	[COMPLEMENTAR] [dbo].[BOOLEAN] NULL,
	[PROTESTOSTATUS] [dbo].[SCODIGO] NULL,
	[SELECIONADO] [dbo].[BOOLEAN] NULL,
	[DESCONTADO] [dbo].[BOOLEAN] NULL,
	[PAGAMENTOTITULO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK__FIN_CTARECEBER] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_CTARECEBER_SALDO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_CTARECEBER_SALDO](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[VENCIMENTO] [dbo].[SDATE] NULL,
	[DATA_PAGTO] [dbo].[SDATE] NULL,
	[DIAS_ATRASO] [dbo].[ICODIGO] NULL,
	[VALOR] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_RECIBO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_RECIBO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[TIPO] [dbo].[SCODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[EXTENSO] [dbo].[SNOME] NULL,
	[VALOR] [dbo].[VALOR] NULL,
	[HISTORICO] [dbo].[SNOME] NULL,
 CONSTRAINT [PK__FIN_RECI__CC87E1272F10007B] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_REGISTROSDIARIOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_REGISTROSDIARIOS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[TERMINAL] [dbo].[ICODIGO] NULL,
	[DATA_ABERTURA] [dbo].[SDATE] NULL,
	[DATA_FECHAMENTO] [dbo].[SDATE] NULL,
	[CONTACAIXA] [dbo].[ICODIGO] NULL,
	[CAIXAABERTO] [dbo].[BOOLEAN] NULL,
	[CAIXAFECHADO] [dbo].[BOOLEAN] NULL,
	[VLR_ENTRADAS] [dbo].[VALOR] NULL,
	[VLR_SAIDAS] [dbo].[VALOR] NULL,
	[VLR_ABERTURACAIXA] [dbo].[VALOR] NULL,
	[VLR_TOTALVENDASCAIXA] [dbo].[VALOR] NULL,
	[VLR_FECHAMENTOCAIXA] [dbo].[VALOR] NULL,
	[HISTORICO] [dbo].[SNOME] NULL,
	[DADOSPC] [dbo].[TEXTO] NULL,
	[USUARIO] [dbo].[ICODIGO] NULL,
 CONSTRAINT [PK_FIN_REGISTROSDIARIOS] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_REGISTROSDIARIOSDETALHES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_REGISTROSDIARIOSDETALHES](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[TIPOPAGAMENTO] [dbo].[SNOME] NULL,
	[FORMAPAGAMENTO] [dbo].[SNOME] NULL,
	[VALOR] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FIN_TRANSFERENCIAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIN_TRANSFERENCIAS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[TIPO] [dbo].[SNOME] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[HISTORICO] [dbo].[TEXTO] NULL,
	[PLN_CONTA] [dbo].[SCODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[CONTACAIXAORIGEM] [dbo].[ICODIGO] NULL,
	[CONTACAIXADESTINO] [dbo].[ICODIGO] NULL,
	[CONTABANCOORIGEM] [dbo].[ICODIGO] NULL,
	[CONTABANCODESTINO] [dbo].[ICODIGO] NULL,
	[VALOR] [dbo].[VALOR] NULL,
	[EFETIVADO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_FIN_TRANSFERENCIAS] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVIMENTOS_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVIMENTOS_PRODUTOS](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[APROVADO] [dbo].[BOOLEAN] NULL,
	[DATAMOVIMENTO] [dbo].[SDATE] NULL,
	[DATAENTREGA] [dbo].[SDATE] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[PEDIDO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[FASEATUAL] [dbo].[ICODIGO] NULL,
	[CELULAATUAL] [dbo].[ICODIGO] NULL,
	[MAQUINAATUAL] [dbo].[ICODIGO] NULL,
	[OPERADORATUAL] [dbo].[ICODIGO] NULL,
	[PROCESSOATUAL] [dbo].[ICODIGO] NULL,
	[TURNOATUAL] [dbo].[ICODIGO] NULL,
	[DEFEITOATUAL] [dbo].[ICODIGO] NULL,
	[QUALIDADEATUAL] [dbo].[IQUANTIDADE] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QTDE_VENDIDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_DEMANDA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZIR] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZIDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZINDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PERDAS] [dbo].[IQUANTIDADE] NULL,
	[QTDE_DEFEITOS] [dbo].[IQUANTIDADE] NULL,
	[QTDE_FISICO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_ESTOQUE] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_CORES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_CORES](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[ID_COR] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_CUSTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_CUSTOS](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[CODIGOCUSTO] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[VALOR] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_FASETRANSFERENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_FASETRANSFERENCIA](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[DATARETORNO] [dbo].[SDATE] NOT NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NOT NULL,
	[FASE] [dbo].[ICODIGO] NOT NULL,
	[TERCEIRIZADOORIGEM] [dbo].[ICODIGO] NULL,
	[DATARETORNOORIGEM] [dbo].[SDATE] NULL,
	[FASEORIGEM] [dbo].[ICODIGO] NULL,
	[QTDE_ENVIADA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_RETORNADA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PERDAS] [dbo].[IQUANTIDADE] NULL,
	[QTDE_DEFEITOS] [dbo].[IQUANTIDADE] NULL,
	[VLR_UNITARIO] [dbo].[VALOR] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[ENCERRADO] [dbo].[BOOLEAN] NULL,
	[GEROUPAGAMENTO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_PCP_FASETRANSFERENCIA] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[ORDEMPRODUCAO] ASC,
	[DATA] ASC,
	[DATARETORNO] ASC,
	[TERCEIRIZADO] ASC,
	[FASE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DATARETORNO] [dbo].[SDATE] NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NULL,
	[FASE] [dbo].[ICODIGO] NULL,
	[FASECONCLUIDA] [dbo].[BOOLEAN] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QTDE_ENVIADA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_RETORNADA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PERDAS] [dbo].[IQUANTIDADE] NULL,
	[QTDE_DEFEITOS] [dbo].[IQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[GEROUPAGAMENTO] [dbo].[BOOLEAN] NULL,
	[ENCERRADO] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MAQUINAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MAQUINAS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[ID_MAQUINA] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[AGULHAS] [dbo].[ICODIGO] NULL,
	[FIOS] [dbo].[ICODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MATERIAPRIMA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MATERIAPRIMA](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QTDE] [dbo].[FQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[COMPOSICAO] [dbo].[ICODIGO] NULL,
	[COMPOSICAO_DESCRICAO] [dbo].[SNOME] NULL,
	[DIMENSIONAMENTO] [dbo].[SNOME] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MATERIAPRIMA_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MATERIAPRIMA_GRADE](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SNOME] NULL,
	[PADRAOCORID] [dbo].[ICODIGO] NULL,
	[PADRAOCORNOME] [dbo].[SNOME] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[TAMANHOPADRAO] [dbo].[SCODIGO] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MATERIAPRIMA_TECIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOS](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QTDE_METROS] [dbo].[FQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[COMPOSICAO] [dbo].[ICODIGO] NULL,
	[COMPOSICAO_DESCRICAO] [dbo].[SNOME] NULL,
	[DIMENSIONAMENTO] [dbo].[SNOME] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MATERIAPRIMA_TECIDOSGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOSGRADE](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[REFERENCIA_COR_ID] [dbo].[ICODIGO] NULL,
	[REFERENCIA_COR_NOME] [dbo].[SCODIGO] NULL,
	[REFERENCIA_TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[REFERENCIA_TAMANHO] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR_NOME] [dbo].[SNOME] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SNOME] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MEDIDAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MEDIDAS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[IDNOME] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[IDMOLDE] [dbo].[SCODIGO] NULL,
	[MEDIDA] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MEDIDAS_APOS_LAVAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MEDIDAS_APOS_LAVAR](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[IDNOME] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[IDMOLDE] [dbo].[SCODIGO] NULL,
	[MEDIDA] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MEDIDAS_DESCRICAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MEDIDAS_DESCRICAO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_PCP_MEDIDAS_DESCRICAO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_MEDIDAS_ORDEM]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_MEDIDAS_ORDEM](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[NOME] [dbo].[SNOME] NULL,
 CONSTRAINT [PK_PCP_MEDIDAS_ORDEM] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMCORTEPARAMETRO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMCORTEPARAMETRO](
	[MESA_CORTE_COMPRIMENTO] [dbo].[IQUANTIDADE] NULL,
	[MESA_CORTE_LARGURA] [dbo].[IQUANTIDADE] NULL,
	[OP_AUTOMATICA] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[DATAPREVISAO] [dbo].[SDATE] NULL,
	[DATAFECHAMENTO] [dbo].[SDATE] NULL,
	[LOTE] [dbo].[ICODIGO] NULL,
	[LOTENOME] [dbo].[SNOME] NULL,
	[ENCERRADO] [dbo].[BOOLEAN] NULL,
	[NATUREZA] [dbo].[SCODIGO] NULL,
	[QTDE_TOTAL] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZIDA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_RESTANTE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PERDAS] [dbo].[IQUANTIDADE] NULL,
	[QTDE_DEFEITOS] [dbo].[IQUANTIDADE] NULL,
	[TEMPO_PRODUCAO] [dbo].[FHORAS] NULL,
	[PERCENTUAL] [dbo].[VALOR] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[TERCEIRIZADOATUAL] [dbo].[ICODIGO] NULL,
	[FASEATUAL] [dbo].[ICODIGO] NULL,
	[CELULAATUAL] [dbo].[ICODIGO] NULL,
	[MAQUINAATUAL] [dbo].[ICODIGO] NULL,
	[OPERADORATUAL] [dbo].[ICODIGO] NULL,
	[PROCESSOATUAL] [dbo].[ICODIGO] NULL,
	[TURNOATUAL] [dbo].[ICODIGO] NULL,
	[DEFEITOATUAL] [dbo].[ICODIGO] NULL,
	[QUALIDADEATUAL] [dbo].[ICODIGO] NULL,
 CONSTRAINT [PK_PCP_ORDEMPRODUCAO] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[APROVADO] ASC,
	[DATA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_ANDAMENTO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_ANDAMENTO](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NULL,
	[FASE] [dbo].[ICODIGO] NULL,
	[FASEORDEM] [dbo].[SCODIGO] NULL,
	[FASETRANSFERENCIA] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QTDE_PRODUZIR] [dbo].[IQUANTIDADE] NULL,
	[QTDE_TRANSFERIDA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PENDENTE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_DEFEITO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PERDA] [dbo].[IQUANTIDADE] NULL,
	[SOBRA] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_DEFEITOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_DEFEITOS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[DATAREGISTRO] [dbo].[SDATE] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QTDEPERDAS] [dbo].[IQUANTIDADE] NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NULL,
	[FASE] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[ICODIGO] NULL,
	[MAQUINA] [dbo].[ICODIGO] NULL,
	[OPERADOR] [dbo].[ICODIGO] NULL,
	[PROCESSO] [dbo].[ICODIGO] NULL,
	[TURNO] [dbo].[ICODIGO] NULL,
	[QUALIDADE] [dbo].[ICODIGO] NULL,
	[DEFEITO] [dbo].[ICODIGO] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[QTDEPRODUZIDA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_RESTANTE] [dbo].[IQUANTIDADE] NULL,
	[TEMPOPRODUCAO] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_ITENS_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS_GRADE](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_LOCALIZACAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_LOCALIZACAO](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NULL,
	[LOTE] [dbo].[ICODIGO] NULL,
	[LOTE_NOME] [dbo].[SNOME] NULL,
	[DATAOP] [dbo].[SDATE] NULL,
	[DATAPREVISAO] [dbo].[SDATE] NULL,
	[DATAOPFECHAMENTO] [dbo].[SDATE] NULL,
	[DATAINICIOFASE] [dbo].[SDATE] NULL,
	[DATARETORNOFASE] [dbo].[SDATE] NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NULL,
	[TERCEIRIZADO_NOME] [dbo].[SNOME] NULL,
	[FASE] [dbo].[ICODIGO] NULL,
	[FASE_NOME] [dbo].[SNOME] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[QTDE_PRODUZIR] [dbo].[IQUANTIDADE] NULL,
	[QTDE_TRANSFERIDA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PENDENTE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_DEFEITO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PERDA] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_MOVIMENTO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_MOVIMENTO](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[DATA] [dbo].[SDATE] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[DATAENVIO] [dbo].[SDATE] NULL,
	[DATARETORNO] [dbo].[SDATE] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QTDE_TOTAL] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZIDA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_RESTANTE] [dbo].[IQUANTIDADE] NULL,
	[PERCENTUAL] [dbo].[VALOR] NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NULL,
	[FASEATUAL] [dbo].[ICODIGO] NULL,
	[CELULAATUAL] [dbo].[ICODIGO] NULL,
	[MAQUINAATUAL] [dbo].[ICODIGO] NULL,
	[OPERADORATUAL] [dbo].[ICODIGO] NULL,
	[PROCESSOATUAL] [dbo].[ICODIGO] NULL,
	[TURNOATUAL] [dbo].[ICODIGO] NULL,
	[DEFEITOATUAL] [dbo].[ICODIGO] NULL,
	[QUALIDADEATUAL] [dbo].[ICODIGO] NULL,
	[VLR_CUSTO] [dbo].[VALOR] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_MP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_MP](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[REFERENCIAID] [dbo].[ICODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QTDE_ESTIMADA] [dbo].[FQUANTIDADE] NULL,
	[QTDE_CONSUMOSTOTAL] [dbo].[FQUANTIDADE] NULL,
	[ESTOQUE] [dbo].[FQUANTIDADE] NULL,
	[NECESSIDADE] [dbo].[FQUANTIDADE] NULL,
	[BAIXADO] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_MPGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_MPGRADE](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[REFERENCIAID] [dbo].[ICODIGO] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SNOME] NULL,
	[PADRAOCORID] [dbo].[ICODIGO] NULL,
	[PADRAOCORNOME] [dbo].[SNOME] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[TAMANHOPADRAO] [dbo].[SCODIGO] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_MPTECIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_MPTECIDOS](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[REFERENCIAID] [dbo].[ICODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QTDE_ESTIMADA] [dbo].[FQUANTIDADE] NULL,
	[QTDE_CONSUMOSTOTAL] [dbo].[FQUANTIDADE] NULL,
	[ESTOQUE] [dbo].[FQUANTIDADE] NULL,
	[NECESSIDADE] [dbo].[FQUANTIDADE] NULL,
	[BAIXADO] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_MPTECIDOSGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_MPTECIDOSGRADE](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[REFERENCIAID] [dbo].[ICODIGO] NULL,
	[REFERENCIA_COR_ID] [dbo].[ICODIGO] NULL,
	[REFERENCIA_COR_NOME] [dbo].[SCODIGO] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR_NOME] [dbo].[SNOME] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SNOME] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_PERDAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_PERDAS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[DATAREGISTRO] [dbo].[SDATE] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QTDEPERDAS] [dbo].[IQUANTIDADE] NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NULL,
	[FASE] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[ICODIGO] NULL,
	[MAQUINA] [dbo].[ICODIGO] NULL,
	[OPERADOR] [dbo].[ICODIGO] NULL,
	[PROCESSO] [dbo].[ICODIGO] NULL,
	[TURNO] [dbo].[ICODIGO] NULL,
	[QUALIDADE] [dbo].[ICODIGO] NULL,
	[DEFEITO] [dbo].[ICODIGO] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[DATAATUALIZACAO] [dbo].[SDATE] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL,
	[QUALIDADE] [dbo].[ICODIGO] NULL,
	[BAIXADO] [dbo].[BOOLEAN] NULL,
	[USUARIO] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_PROCESSOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_PROCESSOS](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[ID_PROCESSO] [dbo].[ICODIGO] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[TEMPO] [dbo].[FHORAS] NULL,
	[CUSTOS] [dbo].[VALOR] NULL,
	[INSTRUCOES] [dbo].[TEXTO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_TERCEIRIZADO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_TERCEIRIZADO](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DATARETORNO] [dbo].[SDATE] NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NULL,
	[FASE] [dbo].[ICODIGO] NULL,
	[QTDE_TOTAL] [dbo].[IQUANTIDADE] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[ENCERRADO] [dbo].[BOOLEAN] NULL,
	[GEROUPAGAMENTO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_PCP_TERCEIRIZADO] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[ORDEMPRODUCAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCP_TERCEIRIZADO_REFERENCIAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCP_TERCEIRIZADO_REFERENCIAS](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOCONFERENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOCONFERENCIA](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[PEDIDO] [dbo].[ICODIGO] NOT NULL,
	[NOTAFISCAL] [dbo].[ICODIGO] NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NOT NULL,
	[VENDEDOR] [dbo].[ICODIGO] NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NULL,
	[HORA] [dbo].[HORAS] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[QTDE_TOTAL] [dbo].[IQUANTIDADE] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[VLR_DESCONTOPEDIDO] [dbo].[VALOR] NULL,
	[FATURADO] [dbo].[BOOLEAN] NULL,
	[FRETE_VOLUMES] [dbo].[IQUANTIDADE] NULL,
	[FRETE_ESPECIE] [dbo].[SCODIGO] NULL,
	[FRETE_MARCA] [dbo].[SCODIGO] NULL,
 CONSTRAINT [PK_PEDIDOCONFERENCIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[PEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOCONFERENCIA_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOCONFERENCIA_ITENS](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[PEDIDO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[VALOR_UNIT] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NOT NULL,
	[VENDEDOR] [dbo].[ICODIGO] NOT NULL,
	[TABELA] [dbo].[ICODIGO] NOT NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NOT NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NOT NULL,
	[TIPO] [dbo].[SCODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[PRODUZINDO] [dbo].[BOOLEAN] NOT NULL,
	[SELECIONADO] [dbo].[BOOLEAN] NOT NULL,
	[LOTE] [dbo].[ICODIGO] NULL,
	[DOCUMENTO] [dbo].[SCODIGO] NULL,
	[DATA_FATURAMENTO] [dbo].[SDATE] NULL,
	[DATA_ENTREGA] [dbo].[SDATE] NULL,
	[TRANSPORTEVOLUMES] [dbo].[IQUANTIDADE] NULL,
	[PRIORIDADE] [dbo].[BOOLEAN] NULL,
	[COMISSAO] [dbo].[PERCENTUAL] NULL,
	[ORIGEM] [dbo].[SCODIGO] NULL,
	[CONFERENCIA] [dbo].[ICODIGO] NULL,
	[QTDE_DISPONIVEL] [dbo].[IQUANTIDADE] NULL,
	[QTDE_TOTAL] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUTOS] [dbo].[IQUANTIDADE] NULL,
	[QTDE_SERVICOS] [dbo].[IQUANTIDADE] NULL,
	[QTDE_TERCEIRIZADOS] [dbo].[IQUANTIDADE] NULL,
	[DESCONTO] [dbo].[PERCENTUAL] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL,
	[VLR_PRODUTOS] [dbo].[VALOR] NULL,
	[VLR_IMPOSTOS] [dbo].[VALOR] NULL,
	[VLR_SERVICOS] [dbo].[VALOR] NULL,
	[VLR_TERCEIRIZADOS] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[FRETE] [dbo].[SCODIGO] NULL,
	[IMPRESSO] [dbo].[BOOLEAN] NULL,
	[OBSERVACAO] [dbo].[TEXTO] NULL,
	[RESPONSAVEL] [dbo].[SNOME] NULL,
	[STATUS] [dbo].[SCODIGO] NULL,
	[STATUSPERCENTUAL] [dbo].[PERCENTUAL] NULL,
	[ITENS_IMPORTADO] [dbo].[BOOLEAN] NULL,
	[ENTREGAPARCIAL] [dbo].[BOOLEAN] NULL,
	[ENTREGAPARCIALPERCENTUAL] [dbo].[PERCENTUAL] NULL,
	[PROBLEMARELATADO] [dbo].[TEXTO] NULL,
	[PROBLEMASOLUCAO] [dbo].[TEXTO] NULL,
 CONSTRAINT [PK_PEDIDOS_1] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[DATA] ASC,
	[CLIENTE] ASC,
	[VENDEDOR] ASC,
	[TABELA] ASC,
	[FORMAPAGTO] ASC,
	[TRANSPORTADORA] ASC,
	[TIPO] ASC,
	[APROVADO] ASC,
	[ORDEMPRODUCAO] ASC,
	[PRODUZINDO] ASC,
	[SELECIONADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOS_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOS_ITENS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NOT NULL,
	[VENDEDOR] [dbo].[ICODIGO] NOT NULL,
	[TABELA] [dbo].[ICODIGO] NOT NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NOT NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NOT NULL,
	[TIPO] [dbo].[SCODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[PRODUZINDO] [dbo].[BOOLEAN] NOT NULL,
	[SELECIONADO] [dbo].[BOOLEAN] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[REFERENCIATECIDO] [dbo].[SCODIGO] NULL,
	[GRADE_TAMANHOS] [dbo].[ICODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QTDE] [dbo].[FQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL,
	[VLR_IMPOSTOS] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[QTDE_LIBERADA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_FATURADA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_CANCELADA] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOS_ITENS_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOS_ITENS_GRADE](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[SEQUENCIA] [dbo].[IQUANTIDADE] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NOT NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NOT NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_ENTREGUE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_RESTANTE] [dbo].[IQUANTIDADE] NULL,
	[VALOR_UNIT] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOS_MATERIAPRIMA_TECIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOS_MATERIAPRIMA_TECIDOS](
	[PRODUTO] [dbo].[SCODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UNIDADE] [dbo].[SCODIGO] NULL,
	[ESTOQUESALDO] [dbo].[FQUANTIDADE] NULL,
	[CONSUMO] [dbo].[FQUANTIDADE] NULL,
	[QTDEBAIXAR] [dbo].[FQUANTIDADE] NULL,
	[SELECIONADO] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOS_MOVIMENTO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOS_MOVIMENTO](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[DATA] [dbo].[SDATE] NULL,
	[CLIENTE] [dbo].[ICODIGO] NULL,
	[VENDEDOR] [dbo].[ICODIGO] NULL,
	[IDREFERENCIA] [dbo].[SCODIGO] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QTDE_PECAS] [dbo].[IQUANTIDADE] NULL,
	[QTDE_ENTREGUE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_RESTANTE] [dbo].[IQUANTIDADE] NULL,
	[VALOR_UNIT] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOS_SERVICOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOS_SERVICOS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NOT NULL,
	[VENDEDOR] [dbo].[ICODIGO] NOT NULL,
	[TABELA] [dbo].[ICODIGO] NOT NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NOT NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NOT NULL,
	[TIPO] [dbo].[SCODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[PRODUZINDO] [dbo].[BOOLEAN] NOT NULL,
	[SELECIONADO] [dbo].[BOOLEAN] NOT NULL,
	[SERVICO] [dbo].[ICODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QTDE] [dbo].[FQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[PROFISSIONAL] [dbo].[ICODIGO] NULL,
	[PROFISSIONAL_NOME] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOS_TERCEIROS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDOS_TERCEIROS](
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[DATA] [dbo].[SDATE] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NOT NULL,
	[VENDEDOR] [dbo].[ICODIGO] NOT NULL,
	[TABELA] [dbo].[ICODIGO] NOT NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NOT NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NOT NULL,
	[TIPO] [dbo].[SCODIGO] NOT NULL,
	[APROVADO] [dbo].[BOOLEAN] NOT NULL,
	[ORDEMPRODUCAO] [dbo].[ICODIGO] NOT NULL,
	[PRODUZINDO] [dbo].[BOOLEAN] NOT NULL,
	[SELECIONADO] [dbo].[BOOLEAN] NOT NULL,
	[SERVICO] [dbo].[ICODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[QTDE] [dbo].[FQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[TERCEIRIZADO] [dbo].[ICODIGO] NULL,
	[TERCEIRIZADO_NOME] [dbo].[SNOME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLANO_CONTAS_CLASSE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLANO_CONTAS_CLASSE](
	[CODIGO] [dbo].[SCODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[VALOR_ACUMULADO] [dbo].[VALOR] NULL,
	[TIPO] [dbo].[SCODIGO] NOT NULL,
 CONSTRAINT [PK__PLANO_CO__CC87E1270BC6C43E] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLANO_CONTAS_DETALHES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLANO_CONTAS_DETALHES](
	[CODIGO] [dbo].[SCODIGO] NOT NULL,
	[CODIGO_PLANO] [dbo].[SNOME] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[TIPO] [dbo].[SCODIGO] NULL,
	[LIMITE] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REL_NECESSIDADE_TEMP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REL_NECESSIDADE_TEMP](
	[SOMA] [numeric](15, 4) NULL,
	[REFERENCIA] [varchar](30) NOT NULL,
	[DESCRICAO] [varchar](200) NULL,
	[UN] [varchar](30) NULL,
	[QTDE] [numeric](15, 4) NULL,
	[TIPO] [varchar](30) NULL,
	[COMPRA] [numeric](15, 4) NULL,
	[ESTOQUE] [numeric](15, 4) NULL,
	[CORTE] [numeric](15, 4) NULL,
	[COR] [varchar](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REL_POSICAO_CLIENTE_TEMP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REL_POSICAO_CLIENTE_TEMP](
	[DATA_REL] [date] NULL,
	[DOCUMENTO] [varchar](200) NULL,
	[HISTORICO] [varchar](200) NULL,
	[DEBITO] [numeric](15, 4) NULL,
	[CREDITO] [numeric](15, 4) NULL,
	[DC] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_NECESSIDADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_NECESSIDADES](
	[EMPRESA] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[COLECAO] [dbo].[ICODIGO] NULL,
	[COLECAO_NOME] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[QTDE_FISICO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_VENDIDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_ENTREGUE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PENDENTE] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZIR] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZIDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_PRODUZINDO] [dbo].[IQUANTIDADE] NULL,
	[QTDE_DEMANDA] [dbo].[IQUANTIDADE] NULL,
	[QTDE_EXCEDENTE] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPRECO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPRECO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[ATIVO] [dbo].[BOOLEAN] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[DATAREVISAO] [dbo].[SDATE] NULL,
	[NOME] [dbo].[SNOME] NULL,
	[PRAZO_MEDIO] [dbo].[ICODIGO] NULL,
	[VALOR_MIN] [dbo].[VALOR] NULL,
	[GRUPO] [dbo].[ICODIGO] NULL,
	[SUBGRUPO] [dbo].[ICODIGO] NULL,
	[COLECAO] [dbo].[ICODIGO] NULL,
	[AJUSTE_TIPO] [dbo].[SCODIGO] NULL,
	[AJUSTE_VALOR] [dbo].[PERCENTUAL] NULL,
	[MOEDA] [dbo].[SCODIGO] NULL,
 CONSTRAINT [PK__TPRECO__CC87E1270EA330E9] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPRECO_DESCONTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPRECO_DESCONTOS](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[QTDE1_PARAM] [dbo].[IQUANTIDADE] NULL,
	[QTDE2_PARAM] [dbo].[IQUANTIDADE] NULL,
	[DESCONTO] [dbo].[PERCENTUAL] NULL,
	[COMISSAO] [dbo].[PERCENTUAL] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TPRECO_REFERENCIAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPRECO_REFERENCIAS](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[DATA_ATUALIZADA] [dbo].[SDATE] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[PRC_VENDA] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPRECO_REFERENCIAS_GRADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPRECO_REFERENCIAS_GRADES](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[REFERENCIA] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[SEQUENCIA] [dbo].[IQUANTIDADE] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[PRC_VENDA] [dbo].[VALOR] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPRECOSERVICO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPRECOSERVICO](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[DATA_ATUALIZADA] [dbo].[SDATE] NOT NULL,
	[NOME] [dbo].[SNOME] NOT NULL,
	[VLR_UNIT] [dbo].[VALOR] NOT NULL,
 CONSTRAINT [PK_TPRECOSERVICO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[USERNAME] [dbo].[SCODIGO] NOT NULL,
	[SENHA] [dbo].[SCODIGO] NULL,
	[BLOQUEAR] [dbo].[BOOLEAN] NULL,
	[ONLINE] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_PEDIDOVENDAAPROVAR] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_PRODUCAOAPROVAR] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_PRODUCAOFASEMOVIMENTAR] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_PRODUCAOATUALIZARESTOQUE] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_ESTOQUEINVENTARIO] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_NOTAFISCALCANCELAR] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_PEDIDOVENDAVERPRECOS] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_PEDIDOVENDAALTERARPAGAMENTO] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_PRODUTOVERPRECOS] [dbo].[BOOLEAN] NULL,
	[PERMISSAO_PEDIDOVENDADESCONTO] [dbo].[BOOLEAN] NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIOS_ACESSO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS_ACESSO](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[USERNAME] [dbo].[SCODIGO] NULL,
	[MENU] [dbo].[SNOME] NULL,
	[GRUPOMENUS] [dbo].[BOOLEAN] NULL,
	[MENU_NAME] [dbo].[SNOME] NULL,
	[MENU_ACESSAR] [dbo].[BOOLEAN] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIOS_LOG]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS_LOG](
	[CODIGO] [dbo].[ICODIGO] NULL,
	[USERNAME] [dbo].[SCODIGO] NULL,
	[DATA] [dbo].[SDATE] NULL,
	[HORAS] [dbo].[HORAS] NULL,
	[MODULO] [dbo].[TEXTO] NULL,
	[FORMULARIO] [dbo].[SNOME] NULL,
	[ACAO] [dbo].[TEXTO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VENDAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENDAS](
	[CODIGO] [dbo].[ICODIGO] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[NOTAFISCAL] [dbo].[ICODIGO] NOT NULL,
	[MODELO] [dbo].[SCODIGO] NOT NULL,
	[SERIE] [dbo].[SCODIGO] NOT NULL,
	[TIPONF] [dbo].[SCODIGO] NOT NULL,
	[EMISSAO] [dbo].[SDATE] NOT NULL,
	[OPERACAO] [dbo].[SCODIGO] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NOT NULL,
	[VENDEDOR] [dbo].[ICODIGO] NOT NULL,
	[CFOP] [dbo].[ICODIGO] NOT NULL,
	[TABELA] [dbo].[ICODIGO] NOT NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NOT NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NOT NULL,
	[STATUS] [dbo].[SCODIGO] NULL,
	[NOTAFISCALORIGEM] [dbo].[ICODIGO] NULL,
	[DATA_ENTRADASAIDA] [dbo].[SDATE] NULL,
	[TIPOPAGAMENTO] [dbo].[SCODIGO] NULL,
	[HORA] [dbo].[HORAS] NULL,
	[IE_SUBSTITUTO_TRIBUTARIO] [dbo].[SCODIGO] NULL,
	[ICMS_BASECALCULO] [dbo].[VALOR] NULL,
	[ICMS_VALOR] [dbo].[VALOR] NULL,
	[ICMS_BASECALCULO_SUBSTITUICAO] [dbo].[VALOR] NULL,
	[ICMS_BASECALCULO_SUBSTITUICAO_VALOR] [dbo].[VALOR] NULL,
	[ICMS_REDUCAO] [dbo].[VALOR] NULL,
	[ICMS_REDUCAO_VALOR] [dbo].[VALOR] NULL,
	[IPI_BASECALCULO] [dbo].[VALOR] NULL,
	[IPI_VALOR] [dbo].[VALOR] NULL,
	[ISS] [dbo].[VALOR] NULL,
	[ISS_BASECALCULO] [dbo].[PERCENTUAL] NULL,
	[ISS_VALOR] [dbo].[VALOR] NULL,
	[SIMPLESNACIONAL_ALIQUOTA] [dbo].[PERCENTUAL] NULL,
	[SIMPLESNACIONAL_VALOR] [dbo].[VALOR] NULL,
	[VLR_FRETE] [dbo].[VALOR] NULL,
	[VLR_SEGURO] [dbo].[VALOR] NULL,
	[VLR_DESPESAS_ASSESSORIAS] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL,
	[VLR_RECEBIDO] [dbo].[VALOR] NULL,
	[VLR_CARTAO] [dbo].[VALOR] NULL,
	[TROCO] [dbo].[VALOR] NULL,
	[VLR_CAIXA] [dbo].[VALOR] NULL,
	[FRETE] [dbo].[SCODIGO] NULL,
	[FRETE_QUANTIDADE] [dbo].[IQUANTIDADE] NULL,
	[FRETE_ESPECIE] [dbo].[SCODIGO] NULL,
	[FRETE_MARCA] [dbo].[SCODIGO] NULL,
	[FRETE_NUMERO] [dbo].[SCODIGO] NULL,
	[FRETE_PBRUTO] [dbo].[VALOR] NULL,
	[FRETE_PLIQUIDO] [dbo].[VALOR] NULL,
	[OBS1] [dbo].[TEXTO] NULL,
	[OBS2] [dbo].[TEXTO] NULL,
	[TIPO_DESCONTO] [dbo].[SCODIGO] NULL,
	[DESCONTO_ACRESCIMO] [dbo].[SCODIGO] NULL,
	[PEDIDO] [dbo].[ICODIGO] NULL,
	[CONFERENCIA] [dbo].[ICODIGO] NULL,
	[CUPOM] [dbo].[BOOLEAN] NULL,
	[IMPRESSO] [dbo].[BOOLEAN] NULL,
	[NFE_FINALIDADE] [dbo].[ICODIGO] NULL,
	[NFE_CERTIFICADO] [dbo].[SNOME] NULL,
	[NFE_ASSINADO] [dbo].[BOOLEAN] NULL,
	[NFE_ASSINATURA] [dbo].[SNOME] NULL,
	[NFE_VALIDADO] [dbo].[BOOLEAN] NULL,
	[NFE_TRANSMITIDO] [dbo].[BOOLEAN] NULL,
	[NFE_DANFEIMPRESSA] [dbo].[BOOLEAN] NULL,
	[NFE_SITUACAOSEFAZ] [dbo].[TEXTO] NULL,
	[NFE_APROVADA] [dbo].[BOOLEAN] NULL,
	[NFE_NFECANCELADA] [dbo].[BOOLEAN] NULL,
	[NFE_RECIBO] [dbo].[SNOME] NULL,
	[NFE_DATATRANSMISSAO] [dbo].[SDATE] NULL,
	[NFE_HORATRANSMISSAO] [dbo].[HORAS] NULL,
	[NFE_CHAVEACESSO] [dbo].[SNOME] NULL,
	[NFE_PROTOCOLOUSO] [dbo].[SNOME] NULL,
	[NFE_SITUACAOCODIGO] [dbo].[SCODIGO] NULL,
	[NFE_LOTE] [dbo].[ICODIGO] NULL,
	[NFE_ARQUIVO] [dbo].[SNOME] NULL,
	[QTDE_PRODUTOS] [dbo].[IQUANTIDADE] NULL,
	[VALOR_PRODUTOS] [dbo].[VALOR] NULL,
	[TOTAL_NF] [dbo].[VALOR] NULL,
	[REGISTRODIARIO] [dbo].[ICODIGO] NULL,
	[DEVOLUCAOCREDITADA] [dbo].[BOOLEAN] NULL,
	[CREDITOABATIMENTO] [dbo].[VALOR] NULL,
	[CANCELAMENTO_MOTIVO] [dbo].[TEXTO] NULL,
	[CANCELAMENTO_DATA] [dbo].[SDATE] NULL,
	[CANCELAMENTO_USUARIO] [dbo].[SNOME] NULL,
	[CANCELAMENTO_CODIGORETORNO] [dbo].[ICODIGO] NULL,
	[CANCELAMENTO_PROTOCOLO] [dbo].[SNOME] NULL,
	[CANCELAMENTO_SITUACAO] [dbo].[TEXTO] NULL,
 CONSTRAINT [PK_VENDAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[EMPRESA] ASC,
	[NOTAFISCAL] ASC,
	[MODELO] ASC,
	[SERIE] ASC,
	[TIPONF] ASC,
	[EMISSAO] ASC,
	[OPERACAO] ASC,
	[CLIENTE] ASC,
	[VENDEDOR] ASC,
	[CFOP] ASC,
	[TABELA] ASC,
	[FORMAPAGTO] ASC,
	[TRANSPORTADORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VENDAS_DEVOLUCAO_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[NOTAFISCAL] [dbo].[ICODIGO] NOT NULL,
	[MODELO] [dbo].[SCODIGO] NOT NULL,
	[SERIE] [dbo].[SCODIGO] NOT NULL,
	[TIPONF] [dbo].[SCODIGO] NOT NULL,
	[EMISSAO] [dbo].[SDATE] NOT NULL,
	[OPERACAO] [dbo].[SCODIGO] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NOT NULL,
	[VENDEDOR] [dbo].[ICODIGO] NOT NULL,
	[CFOP] [dbo].[ICODIGO] NOT NULL,
	[TABELA] [dbo].[ICODIGO] NOT NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NOT NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NOT NULL,
	[PRODUTO] [dbo].[SCODIGO] NULL,
	[SEQUENCIAITEM] [dbo].[ICODIGO] NULL,
	[NCM] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[CLASSIFICACAO_FISCAL] [dbo].[SCODIGO] NULL,
	[SITUACAO_TRIBUTARIA] [dbo].[SCODIGO] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[IPI] [dbo].[VALOR] NULL,
	[VLR_IPI] [dbo].[VALOR] NULL,
	[ICMS] [dbo].[VALOR] NULL,
	[VLR_ICMS] [dbo].[VALOR] NULL,
	[ISS] [dbo].[VALOR] NULL,
	[ISS_BASECALCULO] [dbo].[VALOR] NULL,
	[ISS_VALOR] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[ALIQUOTA] [dbo].[SCODIGO] NULL,
	[TIPOQTDE] [dbo].[SCODIGO] NULL,
	[NATUREZA_DESCONTO] [dbo].[SCODIGO] NULL,
	[CASAS_DECIMAIS] [dbo].[ICODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VENDAS_DEVOLUCAO_ITENS_GRADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS_GRADES](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[SEQUENCIA] [dbo].[IQUANTIDADE] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VENDAS_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENDAS_ITENS](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[NOTAFISCAL] [dbo].[ICODIGO] NOT NULL,
	[MODELO] [dbo].[SCODIGO] NOT NULL,
	[SERIE] [dbo].[SCODIGO] NOT NULL,
	[TIPONF] [dbo].[SCODIGO] NOT NULL,
	[EMISSAO] [dbo].[SDATE] NOT NULL,
	[OPERACAO] [dbo].[SCODIGO] NOT NULL,
	[CLIENTE] [dbo].[ICODIGO] NOT NULL,
	[VENDEDOR] [dbo].[ICODIGO] NOT NULL,
	[CFOP] [dbo].[ICODIGO] NOT NULL,
	[TABELA] [dbo].[ICODIGO] NOT NULL,
	[FORMAPAGTO] [dbo].[ICODIGO] NOT NULL,
	[TRANSPORTADORA] [dbo].[ICODIGO] NOT NULL,
	[PRODUTO] [dbo].[SCODIGO] NULL,
	[SEQUENCIAITEM] [dbo].[ICODIGO] NULL,
	[NCM] [dbo].[SCODIGO] NULL,
	[DESCRICAO] [dbo].[SNOME] NULL,
	[UND] [dbo].[SCODIGO] NULL,
	[NCFOP] [dbo].[ICODIGO] NULL,
	[CLASSIFICACAO_FISCAL] [dbo].[SCODIGO] NULL,
	[SITUACAO_TRIBUTARIA] [dbo].[SCODIGO] NULL,
	[QUANTIDADE] [dbo].[FQUANTIDADE] NULL,
	[VLR_UNIT] [dbo].[VALOR] NULL,
	[IPI] [dbo].[VALOR] NULL,
	[VLR_IPI] [dbo].[VALOR] NULL,
	[ICMS] [dbo].[VALOR] NULL,
	[VLR_ICMS] [dbo].[VALOR] NULL,
	[ISS] [dbo].[VALOR] NULL,
	[ISS_BASECALCULO] [dbo].[VALOR] NULL,
	[ISS_VALOR] [dbo].[VALOR] NULL,
	[DESCONTO] [dbo].[VALOR] NULL,
	[VLR_DESCONTO] [dbo].[VALOR] NULL,
	[VLR_TOTAL] [dbo].[VALOR] NULL,
	[ALIQUOTA] [dbo].[SCODIGO] NULL,
	[TIPOQTDE] [dbo].[SCODIGO] NULL,
	[NATUREZA_DESCONTO] [dbo].[SCODIGO] NULL,
	[CASAS_DECIMAIS] [dbo].[ICODIGO] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VENDAS_ITENS_GRADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENDAS_ITENS_GRADES](
	[CODIGO] [dbo].[ICODIGO] NOT NULL,
	[EMPRESA] [dbo].[ICODIGO] NOT NULL,
	[REFERENCIA] [dbo].[SCODIGO] NOT NULL,
	[IDENTIFICADOR] [dbo].[SCODIGO] NULL,
	[SEQUENCIA] [dbo].[IQUANTIDADE] NULL,
	[GRADE_ID] [dbo].[ICODIGO] NULL,
	[CELULA] [dbo].[SNOME] NULL,
	[COR_ID] [dbo].[ICODIGO] NULL,
	[COR] [dbo].[SCODIGO] NULL,
	[TAMANHO_ID] [dbo].[ICODIGO] NULL,
	[TAMANHO] [dbo].[SCODIGO] NULL,
	[ORDEM_GRADE] [dbo].[SCODIGO] NULL,
	[CELULA_COL] [dbo].[ICODIGO] NULL,
	[COLUNA_ROW] [dbo].[ICODIGO] NULL,
	[QUANTIDADE] [dbo].[IQUANTIDADE] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[VIEW_CONTA_CORRENTE_DADOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CONTA_CORRENTE_DADOS] (
    CODIGO,
    BANCO,
    NOME_BANCO,
    AGENCIA,
    AGENCIA_DIG,
    CTA_CORRENTE,
    CTA_CORRENTE_DIG,
    DADOS_CONTA,
    SALDOINICIAL
    )
AS
select
CODIGO,
coalesce(BANCO,0),
coalesce( (SELECT NOME FROM CAD_BANCOS WHERE CAD_BANCOS.codigo=FIN_CONTA_CORRENTE.banco)   ,'**'),
coalesce(AGENCIA,'0'),
coalesce(AGENCIA_DIG,'0'),
coalesce(CTA_CORRENTE,'0'),
coalesce(CTA_CORRENTE_DIG,'0'),
coalesce( 'BANCO: '+CAST(coalesce(BANCO,0) AS VARCHAR(15) ) +
' / AGENCIA: '+coalesce(AGENCIA,'0') +'-'+coalesce(AGENCIA_DIG,'0')+
' / CONTA CORRENTE: '+coalesce(CTA_CORRENTE,'0')+'-'+coalesce(CTA_CORRENTE_DIG,'0')+
' / CORRENTISTA: '+NOME_CORRENTISTA,''),
coalesce( SALDOINICIAL,0)



from  FIN_CONTA_CORRENTE


GO
/****** Object:  View [dbo].[VIEW_FIN_CONTROLEBANCO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
getdate()
*/

CREATE VIEW [dbo].[VIEW_FIN_CONTROLEBANCO](
    CODIGO,
    DATA,
    DC,
    VLR_CREDITO,
    VLR_DEBITO,
    DEPARTAMENTO,
    CONTA,
    PLN_CONTA,
    HITORICO,
    
    CONTACAIXA,
    CONTACAIXANOME,
    CONTACAIXASALDOINICIAL,
    
    
    VLR_SALDO)
AS
select

    CODIGO,
data,
coalesce( (select TIPO from PLANO_CONTAS_DETALHES where  CODIGO_PLANO=CTRL_BANCARIO.pln_conta), '***'),
vlr_credito,
vlr_debito,
coalesce( (select NOME from CAD_DEPARTAMENTOS where          CODIGO=CTRL_BANCARIO.DEPARTAMENTO),    '***'),
coalesce( (select DADOS_CONTA from VIEW_CONTA_CORRENTE_DADOS where          VIEW_CONTA_CORRENTE_DADOS.CODIGO=CTRL_BANCARIO.DEPARTAMENTO),    '***'),


coalesce( (select NOME from PLANO_CONTAS_DETALHES where  CODIGO_PLANO=CTRL_BANCARIO.pln_conta), '***'),
coalesce( historico,'[NÃO HÁ HISTÓRICO INFORMADO]'),

coalesce( CONTACAIXA,0),
coalesce( (select CAD_CONTAS.NOME from CAD_CONTAS where  CAD_CONTAS.CODIGO=CTRL_BANCARIO.contacaixa), '***'),
coalesce( (select CAD_CONTAS.SALDOINICIAL from CAD_CONTAS where  CAD_CONTAS.CODIGO=CTRL_BANCARIO.contacaixa), 0),

(vlr_credito)-(vlr_debito)
from CTRL_BANCARIO
;


GO
/****** Object:  View [dbo].[VIEW_TERCEIRIZADO_REFERENCIAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_TERCEIRIZADO_REFERENCIAS](
    EMPRESA,
    CODIGO,
    ORDEMPRODUCAO,
    REFERENCIA,
    DESCRICAO,
    COR,
    ORDEM_GRADE,
    TAMANHO,
    VALOR_UNIT,
    QUANTIDADE,
    VLR_TOTAL
    
    )
AS
select
EMPRESA,
CODIGO,
ORDEMPRODUCAO,

REFERENCIA,
coalesce( (select DESCRICAO from CAD_PRODUTOS where CAD_PRODUTOS.REFERENCIA=PCP_FASETRANSFERENCIA_REFERENCIAS.REFERENCIA), '***'),
COR,
ORDEM_GRADE,
TAMANHO,
coalesce(VLR_UNIT,0),
sum(coalesce(QTDE_ENVIADA,0)),
sum(coalesce(QTDE_ENVIADA,0) * coalesce(VLR_UNIT,0))


from PCP_FASETRANSFERENCIA_REFERENCIAS
where
TAMANHO<>'0'
AND
coalesce(QTDE_ENVIADA,0)>0
group by
    EMPRESA,
    CODIGO,
    ORDEMPRODUCAO,
    REFERENCIA,
    COR,
    TAMANHO,
    ORDEM_GRADE,
    VLR_UNIT


GO
/****** Object:  View [dbo].[VIEW_TERCEIRIZADO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_TERCEIRIZADO](
    EMPRESA,
    CODIGO,
    ORDEMPRODUCAO,
    DATA,
    DATARETORNO,
    TERCEIRIZADO,
    TERCEIRIZADO_NOME,
    FASE,
    FASE_NOME,
    CNPJ,
    IE,
    ENDERECO,
    NUMERO,
    BAIRRO,
    CEP,
    NOMECIDADE,
    UF,
    DDD,
    FONE,
    FAX,
    CONTATO,
    EMAIL,    
    
    QTDE_ENVIADA,
    QTDE_RETORNADA,
    
    QTDE_RESTANTE,
    QTDE_PERDAS,
    QTDE_DEFEITOS,
    VLR_UNITARIO,
    VLR_TOTAL,
    OBSERVACAO,
    ENCERRADO,
    GEROUPAGAMENTO
   
    
    
    )
AS
select
    EMPRESA,
    CODIGO,
    ORDEMPRODUCAO,
    DATA,
    DATARETORNO,
    TERCEIRIZADO,
    coalesce( (select NOME from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    
    FASE,
    coalesce( (select NOME from CAD_FASES        where CODIGO=PCP_FASETRANSFERENCIA.FASE), '***'),

    coalesce( (select CPF_CNPJ from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select RG_IE from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select ENDERECO from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select NUMERO from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '0'),
    coalesce( (select BAIRRO from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select CEP from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '0'),
    coalesce( (select NOMECIDADE from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select UF from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select DDD_FONE from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), 0),
    coalesce( (select FONE from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select FAX from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select CONTATO from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    coalesce( (select EMAIL from CAD_CLIENTES        where CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO), '***'),
    
    
    QTDE_ENVIADA,
    QTDE_RETORNADA,
    
    coalesce( QTDE_ENVIADA,0) - coalesce( QTDE_RETORNADA,0),
    QTDE_PERDAS,
    QTDE_DEFEITOS,
    VLR_UNITARIO,
    VLR_TOTAL=( SELECT SUM(VLR_TOTAL) FROM VIEW_TERCEIRIZADO_REFERENCIAS WHERE VIEW_TERCEIRIZADO_REFERENCIAS.CODIGO=PCP_FASETRANSFERENCIA.CODIGO ),

   
    coalesce(OBSERVACAO,''),
    
    CASE ENCERRADO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end,
    
    CASE GEROUPAGAMENTO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end
    
    
    


FROM PCP_FASETRANSFERENCIA



GO
/****** Object:  View [dbo].[VIEW_REFERENCIAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  VIEW [dbo].[VIEW_REFERENCIAS](
    EMPRESA,
    CODIGO,
    DATA,
    REFERENCIA,
    CODIGO_FABRICANTE,
    DESCRICAO,
    TIPO_PRODUTO,
    UNIDADE,
    FASE,
    FASE_NOME,
    GRIFE,
    GRIFE_NOME,
    COLECAO,
    COLECAO_NOME,
    FAIXAETARIA,
    FAIXAETARIA_NOME,
    ETIQUETA,
    ETIQUETA_NOME,
    GRADE,
    GRADE_NOME,
    ESTILISTA,
    ESTILISTA_NOME,
    PRC_CUSTO,
    VALOR_VENDA,
    ESTOQUESALDO,
    GRUPO,
    GRUPO_NOME,
    SUBGRUPO,
    SUBGRUPO_NOME,
    FORNECEDOR,
    FORNECEDOR_NOME,
    GENERO,
    GENERO_NOME,
    COMPOSICAO,
    TAMANHO,
    COR
    
    )
AS
SELECT
   COALESCE(CAD_PRODUTOS.EMPRESA,1),
   COALESCE(CAD_PRODUTOS.CODIGO,0),
   CAD_PRODUTOS.DATA,
   COALESCE(CAD_PRODUTOS.REFERENCIA,'0'),
   COALESCE(CAD_PRODUTOS.CODIGO_FABRICANTE,'0'),
   
   COALESCE(CAD_PRODUTOS.DESCRICAO,'***'),
   COALESCE(CAD_PRODUTOS.TIPO_PRODUTO,'***'),
   COALESCE(CAD_PRODUTOS.UNIDADE,'***'),
   
   COALESCE(FASE,0),
   COALESCE((SELECT CAD_FASESGRADE.NOME FROM CAD_FASESGRADE WHERE CAD_FASESGRADE.CODIGO=CAD_PRODUTOS.FASE), '***'    ),  
   
   COALESCE(CAD_PRODUTOS.GRIFE,0),
   COALESCE((SELECT CAD_GRIFES.NOME FROM CAD_GRIFES WHERE CAD_GRIFES.CODIGO=CAD_PRODUTOS.GRIFE), '***'    ),
   COALESCE(CAD_PRODUTOS.COLECAO,0),
   COALESCE((SELECT CAD_COLECAO.NOME FROM CAD_COLECAO WHERE CAD_COLECAO.CODIGO=CAD_PRODUTOS.COLECAO), '***'    ),
   COALESCE(CAD_PRODUTOS.FAIXA_ETARIA,0),
   
   COALESCE(
   (SELECT CAD_FAIXAETARIA.NOME FROM CAD_FAIXAETARIA WHERE CAD_FAIXAETARIA.CODIGO=CAD_PRODUTOS.FAIXA_ETARIA)+
      ' - IDADE: ' +
      (SELECT CAST( CAD_FAIXAETARIA.IDADE_MINIMA  AS VARCHAR(15) ) FROM CAD_FAIXAETARIA WHERE CAD_FAIXAETARIA.CODIGO=CAD_PRODUTOS.FAIXA_ETARIA)+
      ' ATÉ '  +
      (SELECT CAST( CAD_FAIXAETARIA.IDADE_MAXIMA AS VARCHAR(15) ) FROM CAD_FAIXAETARIA WHERE CAD_FAIXAETARIA.CODIGO=CAD_PRODUTOS.FAIXA_ETARIA),
      '***') ,
      
   COALESCE(CAD_PRODUTOS.ETIQUETA,0),
   COALESCE((SELECT CAD_ETIQUETAS.NOME FROM CAD_ETIQUETAS WHERE CAD_ETIQUETAS.CODIGO=CAD_PRODUTOS.ETIQUETA), '***'  ),
   COALESCE(CAD_PRODUTOS.GRADE,0),
   COALESCE((SELECT CAD_GRADE.DESCRICAO FROM CAD_GRADE WHERE CAD_GRADE.CODIGO=CAD_PRODUTOS.GRADE), '***'    ),
   COALESCE(CAD_PRODUTOS.ESTILISTA,0),
   COALESCE((SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=CAD_PRODUTOS.ESTILISTA), '***'    ),
   COALESCE(CAD_PRODUTOS.PRC_CUSTO,0),
   COALESCE(CAD_PRODUTOS.PRC_VENDA,0),
   COALESCE(CAD_PRODUTOS.ESTOQUESALDO,0),
   COALESCE(CAD_PRODUTOS.GRUPO , 0),
   COALESCE(CAST(CAD_PRODUTOS.GRUPO AS VARCHAR(15)), '0') + ' - '  + COALESCE( (SELECT CAD_GRUPO.DESCRICAO    FROM CAD_GRUPO  WHERE CAD_GRUPO.CODIGO=CAD_PRODUTOS.GRUPO), '***'),
   COALESCE(CAD_PRODUTOS.SUBGRUPO , 0),
   COALESCE(CAST(CAD_PRODUTOS.SUBGRUPO AS VARCHAR(15)),'0' ) +  ' - ' +  COALESCE( (SELECT CAD_SUBGRUPO.DESCRICAO FROM CAD_SUBGRUPO WHERE CAD_SUBGRUPO.CODIGO=CAD_PRODUTOS.GRUPO),  '***' ) ,
   
   COALESCE(CAD_PRODUTOS.FORNECEDOR , 0),
   COALESCE(( SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE    CAD_CLIENTES.CODIGO=CAD_PRODUTOS.FORNECEDOR ) , '***'    ),

   COALESCE(CAD_PRODUTOS.GENERO , 0),
   COALESCE(( SELECT CAD_GENERO.NOME  FROM CAD_GENERO WHERE CAD_GENERO.CODIGO=CAD_PRODUTOS.GENERO ) , '***'    ),
   COALESCE(( SELECT CAD_ETIQUETAS.NOME  FROM CAD_ETIQUETAS WHERE CAD_ETIQUETAS.CODIGO=CAD_PRODUTOS.COMPOSICAO ) , '***'    ),
   COALESCE( TAMANHO,'***'),
   COALESCE( COR,'***')


 FROM CAD_PRODUTOS;



GO
/****** Object:  View [dbo].[VIEW_FATURAMENTO_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_FATURAMENTO_PRODUTOS](
    EMPRESA,
    CODIGO,
    NOTAFISCAL,
    EMISSAO,
    OPERACAO,
    PEDIDO,
    CLIENTE_TIPO,
    CLIENTE,
    CLIENTE_NOME,
    CNPJ,
    IE,
    ENDERECO,
    CEP,
    BAIRRO,
    FONE,
    CIDADE,
    UF,
    VENDEDOR,
    VENDEDOR_NOME,
    CFOP,
    CFOP_NOME,
    REFERENCIA,
    DESCRICAO,
    CLASSIFICACAO_FISCAL,
    SITUACAO_TRIBUTARIA,
    QUANTIDADE,
    VLR_UNIT,
    IPI,
    IPI_VALOR,
    ICMS,
    ICMS_VALOR,
    VLR_ISS,
    VLR_TOTAL_ITENS,
    NF_FORMA_PAGTO,
    NF_FORMA_PAGTO_NOME,
    NF_VLR_DESCONTO,
    NF_VLR_DESP_ACESS,
    NF_BASE_CALC_ICMS,
    NF_VALOR_ICMS,
    NF_VALOR_IPI,
    NF_QTDE_PRODUTOS,
    NF_VLR_TOTAL,
    NF_VLR_TOTALPEDIDO,
    GRIFE,
    GRIFE_NOME,
    COLECAO,
    COLECAO_NOME,
    GRUPO,
    GRUPO_NOME,
    SUBGRUPO,
    SUBGRUPO_NOME,
    FORNECEDOR,
    FORNECEDOR_NOME,
    CUPOM)
AS
SELECT

  COALESCE(vendas_itens.EMPRESA,1),
  vendas_itens.codigo,
  COALESCE(vendas_itens.NOTAFISCAL , 0) ,
  vendas_itens.emissao,
  COALESCE(vendas_itens.operacao , '***' ),
  COALESCE(( SELECT  top 1  vendas.pedido           FROM vendas            WHERE vendas.codigo           = vendas_itens.codigo ) , 0),
  ( SELECT top 1 cad_clientes.tipo                  FROM cad_clientes      WHERE cad_clientes.codigo     = ( SELECT top 1 vendas.cliente FROM vendas WHERE vendas.codigo = vendas_itens.codigo)),
  ( SELECT top 1 vendas.cliente                     FROM vendas            WHERE vendas.codigo           = (  SELECT top 1 vendas.codigo FROM vendas WHERE vendas.codigo  =vendas_itens.codigo)),
  ( SELECT top 1 cad_clientes.nome                  FROM cad_clientes      WHERE cad_clientes.codigo     = ( SELECT top 1 vendas.cliente FROM vendas WHERE vendas.codigo = vendas_itens.codigo)),
  ( SELECT top 1  cad_clientes.cpf_cnpj             FROM cad_clientes      WHERE cad_clientes.codigo     = vendas_itens.cliente),
  ( SELECT top 1 cad_clientes.rg_ie                 FROM cad_clientes      WHERE cad_clientes.codigo     = vendas_itens.cliente),
  ( SELECT top 1 cad_clientes.endereco              FROM cad_clientes      WHERE cad_clientes.codigo     = vendas_itens.cliente ),
  ( SELECT top 1 cad_clientes.cep                   FROM cad_clientes      WHERE cad_clientes.codigo     = vendas_itens.cliente ),
  ( SELECT top 1 cad_clientes.bairro                FROM cad_clientes      WHERE cad_clientes.codigo     = vendas_itens.cliente),
  ( SELECT top 1 cad_clientes.fone                  FROM cad_clientes      WHERE cad_clientes.codigo     = vendas_itens.cliente),
  ( SELECT top 1 cad_clientes.nomecidade            FROM cad_clientes      WHERE cad_clientes.codigo     = vendas_itens.cliente),
  ( SELECT top 1 cad_clientes.uf                    FROM cad_clientes      WHERE cad_clientes.codigo     = vendas_itens.cliente),
  ( SELECT top 1 vendas.vendedor                    FROM vendas            WHERE vendas.codigo           =( SELECT top 1 vendas.codigo FROM vendas WHERE vendas.codigo  = vendas_itens.codigo)),
  ( SELECT top 1 CAD_CLIENTES.nome                  FROM CAD_CLIENTES      WHERE CAD_CLIENTES.codigo     =( SELECT top 1 vendas.vendedor FROM vendas WHERE vendas.codigo=vendas_itens.codigo)),
  ( SELECT top 1 vendas.cfop                        FROM vendas            WHERE vendas.codigo           = vendas_itens.codigo),
  ( SELECT top 1 cad_cfop.descricao                 FROM cad_cfop          WHERE cad_cfop.codigo         = vendas_itens.cfop),
   COALESCE(vendas_itens.produto , '***'),
  ( SELECT top 1 cad_produtos.descricao             FROM cad_produtos      WHERE cad_produtos.referencia = vendas_itens.produto),
  COALESCE(vendas_itens.CLASSIFICACAO_FISCAL , '' ) AS
  classificacao_fiscal,
  COALESCE(vendas_itens.SITUACAO_TRIBUTARIA , '' ) AS
  situacao_tributaria,
  COALESCE(vendas_itens.quantidade , 0),
  COALESCE(vendas_itens.vlr_unit , 0 ),
  COALESCE(vendas_itens.ipi , 0 ) ,
  COALESCE(vendas_itens.vlr_ipi , 0 ),
  COALESCE(vendas_itens.icms , 0 ),
  COALESCE(vendas_itens.vlr_icms , 0 ),
  ( SELECT top 1 vendas.iss_valor                   FROM vendas            WHERE vendas.codigo  = vendas_itens.codigo),
  COALESCE(vendas_itens.vlr_total , 0 ) ,
  COALESCE(vendas_itens.FORMAPAGTO , 0),
  ( SELECT top 1 CAD_FORMAPAGTO.nome                FROM CAD_FORMAPAGTO    WHERE CAD_FORMAPAGTO.codigo  = vendas_itens.FORMAPAGTO),
  ( SELECT top 1 vendas.vlr_desconto                FROM vendas            WHERE vendas.codigo  = vendas_itens.codigo),
  ( SELECT top 1 vendas.VLR_DESPESAS_ASSESSORIAS    FROM vendas            WHERE vendas.codigo  = vendas_itens.codigo),
  ( SELECT top 1 vendas.ICMS_BASECALCULO            FROM vendas            WHERE vendas.codigo  = vendas_itens.codigo),
  ( SELECT top 1 vendas.ICMS_VALOR      FROM vendas            WHERE vendas.codigo  = vendas_itens.codigo),
  ( SELECT top 1 vendas.IPI_VALOR                   FROM vendas            WHERE vendas.codigo  = vendas_itens.codigo),
  ( SELECT top 1 vendas.QTDE_PRODUTOS               FROM vendas            WHERE vendas.codigo  = vendas_itens.codigo),
( SELECT top 1 vendas.total_nf                    FROM vendas            WHERE vendas.codigo  = vendas_itens.codigo),
 
(CASE  WHEN (select TOTAL_NF      from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO) < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=(select PEDIDO  from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO)  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=(select PEDIDO  from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO)  ) END),

  ( SELECT top 1 view_referencias.grife             FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias.grife_nome        FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias.colecao           FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias.colecao_nome      FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias. grupo            FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias.grupo_nome        FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias.subgrupo          FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias.subgrupo_nome     FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias.fornecedor        FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
  ( SELECT top 1 view_referencias.fornecedor_nome   FROM view_referencias  WHERE view_referencias.referencia  = vendas_itens.produto),
coalesce( (select CUPOM from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 'N')


 FROM vendas_itens
;


GO
/****** Object:  View [dbo].[VIEW_COMPRAS_DETALHES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_COMPRAS_DETALHES](
    NUMERO,
    DATA,
    PEDIDO,
    FORNECEDOR,
    FORNECEDOR_NOME,
    CFOP,
    PRODUTO,
    DESCRICAO,
    QUANTIDADE,
    VLR_UNIT,
    VLR_TOTAL,
    GRIFE,
    GRIFE_NOME,
    COLECAO,
    COLECAO_NOME,
    GRUPO,
    GRUPO_NOME,
    SUBGRUPO,
    SUBGRUPO_NOME)
AS
select

coalesce( NOTAFISCAL, 0),
DATA,

coalesce( (select PEDIDOINTERNO from COMPRAS where COMPRAS.CODIGO=COMPRAS_ITENS.CODIGO), 0),
coalesce( FORNECEDOR,  0),
coalesce( (select NOME from CAD_CLIENTES where  CAD_CLIENTES.CODIGO=COMPRAS_ITENS.FORNECEDOR), '***'),

coalesce( (select CFOP from COMPRAS where COMPRAS.CODIGO=COMPRAS_ITENS.CODIGO), 0),
coalesce( PRODUTO, '***'),
coalesce( (select DESCRICAO from CAD_PRODUTOS where  CAD_PRODUTOS.REFERENCIA=COMPRAS_ITENS.PRODUTO), '***'),

coalesce( QUANTIDADE,     0),
coalesce( VL_UNITARIO,     0),
coalesce( VL_TOTAL,     0),



        COALESCE(((
                    SELECT
                     top 1
                    view_referencias.grife
                    FROM view_referencias
                    WHERE view_referencias.referencia  =
                    COMPRAS_ITENS.produto 
                    
        )) , 0) AS grife,
        COALESCE((
                   SELECT
                    top 1
                   view_referencias.grife_nome
                   FROM view_referencias
                   WHERE view_referencias.referencia  =
                   COMPRAS_ITENS.produto 
                   
        ), '***' ) AS grife_nome,
        COALESCE(((
                    SELECT
                     top 1
                    view_referencias.colecao
                    FROM view_referencias
                    WHERE view_referencias.referencia  =
                    COMPRAS_ITENS.produto 
                    
        )) , 0) AS colecao,
        COALESCE((
                   SELECT
                    top 1
                   view_referencias.colecao_nome
                   FROM view_referencias
                   WHERE view_referencias.referencia  =
                   COMPRAS_ITENS.produto 
                   
        ), '***' ) AS colecao_nome,
        COALESCE((
                   SELECT
                    top 1
                   view_referencias. grupo
                   FROM view_referencias
                   WHERE view_referencias.referencia  =
                   COMPRAS_ITENS.produto 
                   
        ), 0) AS grupo,
        COALESCE((
                   SELECT
                    top 1
                   view_referencias.grupo_nome
                   FROM view_referencias
                   WHERE view_referencias.referencia  =
                   COMPRAS_ITENS.produto 
                   
        ), '***'  ) AS grupo_nome,
        COALESCE((
                   SELECT
                    top 1
                   view_referencias.subgrupo
                   FROM view_referencias
                   WHERE view_referencias.referencia  =
                   COMPRAS_ITENS.produto 
                   
        ), 0) AS subgrupo,
        COALESCE((
                   SELECT
                    top 1
                   view_referencias.subgrupo_nome
                   FROM view_referencias
                   WHERE view_referencias.referencia  =
                   COMPRAS_ITENS.produto 
                   
        ), '***'  ) AS subgrupo_nome
        
                  
from COMPRAS_ITENS

;


GO
/****** Object:  View [dbo].[VIEW_PEDIDO_QTDERESTANTE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VIEW_PEDIDO_QTDERESTANTE] (
    CONFERENCIA,
    CODIGO,
    DATA,
    DATAENTREGA,
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    COR_ID,
    COR,
    TAMANHO_ID,
    TAMANHO,
    ORDEM_GRADE,
    VLR_UNITARIO,
    QTDEVENDIDA,
    QTDECONFERIDA,
    QTDERESTANTE,
    QTDEFATURADA,
    QTDERESTANTEFATURAR,
    VLRFATURADO
    
      )
AS

SELECT
COALESCE(PEDIDOCONFERENCIA_ITENS.CODIGO,0),
TBLMASTER.CODIGO,
(SELECT DATA               FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=TBLMASTER.CODIGO),
(SELECT DATA_ENTREGA       FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=TBLMASTER.CODIGO),


TBLMASTER.REFERENCIA,

IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( TBLMASTER.REFERENCIA,
                                     TBLMASTER.COR_ID,
                                     TBLMASTER.TAMANHO_ID
                                     ),

COALESCE( (SELECT CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=TBLMASTER.REFERENCIA  ),'***'    ),
TBLMASTER.COR_ID,
TBLMASTER.COR,
TBLMASTER.TAMANHO_ID,
TBLMASTER.TAMANHO,
TBLMASTER.ORDEM_GRADE,

VALOR_UNITARIO=COALESCE( (SELECT TOP 1 PEDIDOS_ITENS.VLR_UNIT FROM PEDIDOS_ITENS WHERE PEDIDOS_ITENS.CODIGO=TBLMASTER.CODIGO  AND PEDIDOS_ITENS.REFERENCIA=TBLMASTER.REFERENCIA ),0),


QTDEVENDIDA=COALESCE(  SUM(TBLMASTER.QUANTIDADE),0),

QTDECONFERIDA=COALESCE( ( SELECT SUM(PEDIDOCONFERENCIA_ITENS.QUANTIDADE) AS QUANTIDADE FROM PEDIDOCONFERENCIA_ITENS WHERE  PEDIDOCONFERENCIA_ITENS.PEDIDO=TBLMASTER.CODIGO  AND PEDIDOCONFERENCIA_ITENS.REFERENCIA=TBLMASTER.REFERENCIA AND PEDIDOCONFERENCIA_ITENS.COR_ID=TBLMASTER.COR_ID AND PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=TBLMASTER.TAMANHO_ID ),0),


             
QTDERESTANTE=COALESCE(  SUM(TBLMASTER.QUANTIDADE)-  COALESCE( ( SELECT SUM(PEDIDOCONFERENCIA_ITENS.QUANTIDADE) AS QUANTIDADE FROM PEDIDOCONFERENCIA_ITENS WHERE  PEDIDOCONFERENCIA_ITENS.PEDIDO=TBLMASTER.CODIGO  AND PEDIDOCONFERENCIA_ITENS.REFERENCIA=TBLMASTER.REFERENCIA AND PEDIDOCONFERENCIA_ITENS.COR_ID=TBLMASTER.COR_ID AND PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=TBLMASTER.TAMANHO_ID ),0),0),

QTDEFATURADA=COALESCE( 
( SELECT SUM(PEDIDOCONFERENCIA_ITENS.QUANTIDADE) AS QUANTIDADE FROM PEDIDOCONFERENCIA_ITENS WHERE  PEDIDOCONFERENCIA_ITENS.PEDIDO=TBLMASTER.CODIGO  AND PEDIDOCONFERENCIA_ITENS.REFERENCIA=TBLMASTER.REFERENCIA AND PEDIDOCONFERENCIA_ITENS.COR_ID=TBLMASTER.COR_ID AND PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=TBLMASTER.TAMANHO_ID 
AND (SELECT TOP 1 FATURADO          FROM PEDIDOCONFERENCIA WHERE   PEDIDOCONFERENCIA.PEDIDO=TBLMASTER.CODIGO ) IN ('S','Q') ) ,0),

QTDERESTANTEFATURAR=COALESCE(  SUM(TBLMASTER.QUANTIDADE)-  COALESCE( 
( SELECT SUM(PEDIDOCONFERENCIA_ITENS.QUANTIDADE) AS QUANTIDADE FROM PEDIDOCONFERENCIA_ITENS WHERE  PEDIDOCONFERENCIA_ITENS.PEDIDO=TBLMASTER.CODIGO  AND PEDIDOCONFERENCIA_ITENS.REFERENCIA=TBLMASTER.REFERENCIA AND PEDIDOCONFERENCIA_ITENS.COR_ID=TBLMASTER.COR_ID AND PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=TBLMASTER.TAMANHO_ID 
AND (SELECT TOP 1 FATURADO          FROM PEDIDOCONFERENCIA WHERE   PEDIDOCONFERENCIA.PEDIDO=TBLMASTER.CODIGO ) IN ('S','Q') ) ,0)

,0),

VLRFATURADO=COALESCE( 
( SELECT SUM(PEDIDOCONFERENCIA_ITENS.VALOR_UNIT) AS VALOR_UNIT FROM PEDIDOCONFERENCIA_ITENS WHERE  PEDIDOCONFERENCIA_ITENS.PEDIDO=TBLMASTER.CODIGO  AND PEDIDOCONFERENCIA_ITENS.REFERENCIA=TBLMASTER.REFERENCIA AND PEDIDOCONFERENCIA_ITENS.COR_ID=TBLMASTER.COR_ID AND PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=TBLMASTER.TAMANHO_ID 
AND (SELECT TOP 1 FATURADO          FROM PEDIDOCONFERENCIA WHERE   PEDIDOCONFERENCIA.PEDIDO=TBLMASTER.CODIGO ) IN ('S') ) ,0)


                                                               

FROM PEDIDOS_ITENS_GRADE TBLMASTER

LEFT JOIN PEDIDOCONFERENCIA_ITENS ON PEDIDOCONFERENCIA_ITENS.PEDIDO=TBLMASTER.CODIGO 
AND PEDIDOCONFERENCIA_ITENS.REFERENCIA=TBLMASTER.REFERENCIA
AND PEDIDOCONFERENCIA_ITENS.COR_ID=TBLMASTER.COR_ID
AND PEDIDOCONFERENCIA_ITENS.TAMANHO_ID=TBLMASTER.TAMANHO_ID



WHERE
TBLMASTER.TAMANHO_ID>0 AND TBLMASTER.TAMANHO<>''
AND
TBLMASTER.QUANTIDADE>0
AND
TBLMASTER.APROVADO='S'
--AND
--(SELECT PEDIDOS.STATUS          FROM PEDIDOS WHERE PEDIDOS.EMPRESA=TBLMASTER.EMPRESA AND PEDIDOS.CODIGO=TBLMASTER.CODIGO )='N'


GROUP BY

PEDIDOCONFERENCIA_ITENS.CODIGO,
TBLMASTER.CODIGO,
TBLMASTER.REFERENCIA,
TBLMASTER.IDENTIFICADOR,
TBLMASTER.COR_ID,
TBLMASTER.COR,
TBLMASTER.ORDEM_GRADE,
TBLMASTER.TAMANHO_ID,
TBLMASTER.TAMANHO





GO
/****** Object:  View [dbo].[VIEW_PEDIDO_X_ESTOQUE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW   [dbo].[VIEW_PEDIDO_X_ESTOQUE] (
       CODIGO
      ,DATA
      ,CLIENTE
      ,CLIENTE_NOME
      ,VENDEDOR
      ,VENDEDOR_NOME
      ,REFERENCIA
      ,IDENTIFICADOR
      ,DESCRICAO
      ,COR
      ,ORDEM_GRADE
      ,TAMANHO
      ,VLR_UNITARIO
      ,QTDERESTANTE
      ,QTDEESTOQUE
      ,VALOR_QTDEVENDIDA
      
       )
AS


SELECT 

       VIEW_PEDIDO_QTDERESTANTE.CODIGO
      ,(SELECT PEDIDOS.DATA FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)


      ,(SELECT PEDIDOS.CLIENTE FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)
      ,(SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=(SELECT PEDIDOS.CLIENTE FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)   )
      
      ,(SELECT PEDIDOS.VENDEDOR FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)
      ,(SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=(SELECT PEDIDOS.VENDEDOR FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)   )
      
      
      ,VIEW_PEDIDO_QTDERESTANTE.REFERENCIA
      ,VIEW_PEDIDO_QTDERESTANTE.IDENTIFICADOR
      ,VIEW_PEDIDO_QTDERESTANTE.DESCRICAO
      ,VIEW_PEDIDO_QTDERESTANTE.COR
      ,VIEW_PEDIDO_QTDERESTANTE.ORDEM_GRADE
      ,VIEW_PEDIDO_QTDERESTANTE.TAMANHO
      ,VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO
      ,VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA
      ,CAD_PRODUTOS_GRADES.QUANTIDADE
      --,(VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA)
      ,
      CASE  
         WHEN CAD_PRODUTOS_GRADES.QUANTIDADE >= VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA  THEN (VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA)   
         WHEN CAD_PRODUTOS_GRADES.QUANTIDADE <= VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA  THEN (VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * CAD_PRODUTOS_GRADES.QUANTIDADE)   
      END
      
      
  FROM VIEW_PEDIDO_QTDERESTANTE
  INNER JOIN CAD_PRODUTOS_GRADES ON CAD_PRODUTOS_GRADES.REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA
  AND
  CAD_PRODUTOS_GRADES.COR=VIEW_PEDIDO_QTDERESTANTE.COR
  AND
  CAD_PRODUTOS_GRADES.TAMANHO=VIEW_PEDIDO_QTDERESTANTE.TAMANHO
  
  WHERE
  CAD_PRODUTOS_GRADES.QUANTIDADE>0


GO
/****** Object:  View [dbo].[VIEW_PEDIDO_PARCIAL]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW  [dbo].[VIEW_PEDIDO_PARCIAL] (
       --CONFERENCIA
      CODIGO
      ,DATA
      ,DATAENTREGA
      ,CLIENTE
      ,CLIENTE_NOME
      ,VENDEDOR
      ,VENDEDOR_NOME
      ,REFERENCIA
      ,IDENTIFICADOR
      ,DESCRICAO
      ,COR
      ,ORDEM_GRADE
      ,TAMANHO
      ,VLR_UNITARIO
      ,QTDEVENDIDA
      ,QTDECONFERIDA
      ,QTDERESTANTE
      ,VALOR_QTDEVENDIDA
      ,VALOR_QTDECONFERIDA
      ,VALOR_QTDERESTANTE
      ,QTDEFATURADA
      ,QTDERESTANTEFATURAR
      ,VLRFATURADO
      
       )
AS


SELECT 

      --PEDIDOCONFERENCIA_ITENS.CODIGO
      VIEW_PEDIDO_QTDERESTANTE.CODIGO
      ,(SELECT PEDIDOS.DATA FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)
      ,(SELECT PEDIDOS.DATA_ENTREGA FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)


      ,(SELECT PEDIDOS.CLIENTE FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)
      ,(SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=(SELECT PEDIDOS.CLIENTE FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)   )
      
      ,(SELECT PEDIDOS.VENDEDOR FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)
      ,(SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=(SELECT PEDIDOS.VENDEDOR FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)   )
      
      
      ,VIEW_PEDIDO_QTDERESTANTE.REFERENCIA
      ,VIEW_PEDIDO_QTDERESTANTE.IDENTIFICADOR
      ,VIEW_PEDIDO_QTDERESTANTE.DESCRICAO
      ,VIEW_PEDIDO_QTDERESTANTE.COR
      ,VIEW_PEDIDO_QTDERESTANTE.ORDEM_GRADE
      ,VIEW_PEDIDO_QTDERESTANTE.TAMANHO
      ,VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO
      ,VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA
      ,VIEW_PEDIDO_QTDERESTANTE.QTDECONFERIDA
      ,VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTE
      ,(VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA)
      ,(VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDECONFERIDA)
      ,(VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTE)

      ,VIEW_PEDIDO_QTDERESTANTE.QTDEFATURADA
      ,VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTEFATURAR
      ,(VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDEFATURADA)

      
      /*
      ,VIEW_PEDIDO_QTDERESTANTE.QTDEFATURADA
      ,VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTEFATURAR
      ,VIEW_PEDIDO_QTDERESTANTE.VLRFATURADO
     */ 
      
  FROM VIEW_PEDIDO_QTDERESTANTE




GO
/****** Object:  View [dbo].[VIEW_PEDIDOSGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_PEDIDOSGRADE](
    EMPRESA,
    CODIGO,  
    DATA,
    DATAENTREGA,
    
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    TABELA,
    FORMAPAGTO,
    TRANSPORTADORA,
    TIPO,
    APROVADO,
    ORDEMPRODUCAO,  
   
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    COR_ID,
    COR,
    TAMANHO_ID,
    TAMANHO,
    ORDEM_GRADE,
    QUANTIDADE,
    QTDE_ENTREGUE,
    QTDE_RESTANTE,
    VALOR_UNIT    )
AS
SELECT
COALESCE(EMPRESA,1),
COALESCE(CODIGO,0),
COALESCE( (SELECT DATA               FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),GETDATE()),
COALESCE( (SELECT DATA_ENTREGA       FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),GETDATE()),

COALESCE( (SELECT CLIENTE            FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),0),
(SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=COALESCE( (SELECT CLIENTE            FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),0)   ),



COALESCE( (SELECT VENDEDOR           FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),0),
COALESCE( (SELECT TABELA             FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),0),
COALESCE( (SELECT FORMAPAGTO         FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),0),
COALESCE( (SELECT TRANSPORTADORA     FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),0),
COALESCE( (SELECT TIPO               FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),'VENDA'),
COALESCE( (SELECT APROVADO           FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),'N'),
COALESCE( (SELECT ORDEMPRODUCAO      FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),0),


COALESCE(REFERENCIA,'***'),
IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( PEDIDOS_ITENS_GRADE.REFERENCIA,
                                     PEDIDOS_ITENS_GRADE.COR_ID,
                                     PEDIDOS_ITENS_GRADE.TAMANHO_ID
                                     ),


COALESCE( (SELECT DESCRICAO   FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA), '***'),
COR_ID,
COALESCE( (SELECT NOME        FROM CAD_CORES       WHERE CAD_CORES.CODIGO=PEDIDOS_ITENS_GRADE.COR_ID),'***'),
TAMANHO_ID,
COALESCE( (SELECT TAMANHO   FROM CAD_TAMANHOS    WHERE CAD_TAMANHOS.CODIGO=PEDIDOS_ITENS_GRADE.TAMANHO_ID),'***'),
COALESCE(ORDEM_GRADE,''),
COALESCE(QUANTIDADE,0),
COALESCE(QTDE_ENTREGUE,0),
COALESCE((COALESCE(QUANTIDADE,0)-COALESCE(QTDE_ENTREGUE,0)),0),
COALESCE( (SELECT VLR_UNIT    FROM PEDIDOS_ITENS   WHERE PEDIDOS_ITENS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO AND PEDIDOS_ITENS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA), 0)


FROM PEDIDOS_ITENS_GRADE
WHERE 
TAMANHO_ID>0 AND COR_ID>0
AND
QUANTIDADE>0


GO
/****** Object:  View [dbo].[VIEW_FNC_NECESSIDADEPRODUCAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_FNC_NECESSIDADEPRODUCAO]  (
EMPRESA,
DATAENTREGA,
REFERENCIA,
DESCRICAO,
COR_ID,
COR,
TAMANHO_ID,
TAMANHO,
ORDEM_GRADE,
QTDE_FISICO,
QTDE_VENDIDO,
QTDE_ENTREGUE, 
QTDE_PENDENTE, 
QTDE_PRODUZINDO, 
QTDE_DEMANDA,
QTDE_EXCEDENTE
    )
    
AS

select

EMPRESA,
DATAENTREGA,
REFERENCIA,
DESCRICAO,
COR_ID,
COR,
TAMANHO_ID,
TAMANHO,
ORDEM_GRADE,

QTDE_FISICO=COALESCE(
                         (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES
                          WHERE
                          CAD_PRODUTOS_GRADES.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADES.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                          AND
                          CAD_PRODUTOS_GRADES.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                         ) ,0),

--QTDE_VENDIDO=SUM(QTDE_VENDIDO),

QTDE_VENDIDO=COALESCE(
                         (SELECT SUM(VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA) FROM VIEW_PEDIDO_QTDERESTANTE
                          WHERE
                          VIEW_PEDIDO_QTDERESTANTE.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                         ) ,0),


QTDE_ENTREGUE=COALESCE(
                         (SELECT SUM(VIEW_PEDIDO_QTDERESTANTE.QTDECONFERIDA) FROM VIEW_PEDIDO_QTDERESTANTE
                          WHERE
                          VIEW_PEDIDO_QTDERESTANTE.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                         ) ,0),


QTDE_PENDENTE=COALESCE(
                         (SELECT SUM(VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTE) FROM VIEW_PEDIDO_QTDERESTANTE
                          WHERE
                          VIEW_PEDIDO_QTDERESTANTE.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                          AND
                          VIEW_PEDIDO_QTDERESTANTE.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                         ) ,0),

QTDE_PRODUZINDO=(coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=VIEW_PEDIDOSGRADE.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S') ,0)

                                                                         -
                                                                         
                                                                     coalesce(( SELECT SUM(QTDE_PRODUZIDA) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=VIEW_PEDIDOSGRADE.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S'


                                                                         ) ,0)),



QTDE_DEMANDA=(COALESCE((SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES
                          WHERE
                          CAD_PRODUTOS_GRADES.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADES.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                          AND
                          CAD_PRODUTOS_GRADES.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                         ),0)

                         +

                        (coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=VIEW_PEDIDOSGRADE.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S') ,0)

                                                                     -
                                                                         
                                                                     coalesce(( SELECT SUM(QTDE_PRODUZIDA) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=VIEW_PEDIDOSGRADE.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S') ,0)
                                                                        )
                         -
                         
                         SUM(QUANTIDADE)),


QTDE_EXCEDENTE=
   case
      when COALESCE((COALESCE((SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES
                          WHERE
                          CAD_PRODUTOS_GRADES.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADES.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                          AND
                          CAD_PRODUTOS_GRADES.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                         ),0)

                         +

                        (coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=VIEW_PEDIDOSGRADE.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S'


                                                                         ) ,0)

                                                                         -
                                                                   coalesce(( SELECT SUM(QTDE_PRODUZIDA) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=VIEW_PEDIDOSGRADE.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S'


                                                                         ) ,0))



                         -
                         
                         SUM(QUANTIDADE)) ,0)>0 then  COALESCE((COALESCE(
                                                           (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES
                                                           WHERE
                                                           CAD_PRODUTOS_GRADES.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                           AND
                                                           CAD_PRODUTOS_GRADES.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                           AND
                                                           CAD_PRODUTOS_GRADES.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID ),0)

                         +

                        (coalesce(( SELECT SUM(QTDE_TOTAL) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=VIEW_PEDIDOSGRADE.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S') ,0)

                                                                         -
                                                                         
                                                                    coalesce(( SELECT SUM(QTDE_PRODUZIDA) AS QTDE_TOTAL FROM PCP_ORDEMPRODUCAO_MOVIMENTO
                                                                     WHERE
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.EMPRESA=VIEW_PEDIDOSGRADE.EMPRESA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA=VIEW_PEDIDOSGRADE.REFERENCIA
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.COR_ID=VIEW_PEDIDOSGRADE.COR_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.TAMANHO_ID=VIEW_PEDIDOSGRADE.TAMANHO_ID
                                                                     AND
                                                                        PCP_ORDEMPRODUCAO_MOVIMENTO.APROVADO='S') ,0))

                         -
                         SUM(QUANTIDADE))  ,0  )



   else
      0
   end

 from VIEW_PEDIDOSGRADE

GROUP BY
EMPRESA,
DATAENTREGA,
REFERENCIA, 
DESCRICAO,
COR_ID, 
COR,
TAMANHO_ID, 
TAMANHO, 
ORDEM_GRADE


GO
/****** Object:  View [dbo].[VIEW_PEDIDO_PARCIALSINTETICO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW  [dbo].[VIEW_PEDIDO_PARCIALSINTETICO] (
       --CONFERENCIA
       DATA
      ,DATAENTREGA
      ,REFERENCIA
      ,DESCRICAO
      ,VLR_UNITARIO
      
      ,QTDEVENDIDA
      ,QTDECONFERIDA
      ,QTDERESTANTE
      ,VALOR_QTDEVENDIDA
      ,VALOR_QTDECONFERIDA
      ,VALOR_QTDERESTANTE
      ,QTDEFATURADA
      ,QTDERESTANTEFATURAR
      ,VLRFATURADO
      
       )
AS


SELECT 
      DISTINCT

       (SELECT PEDIDOS.DATA FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)
      ,(SELECT PEDIDOS.DATA_ENTREGA FROM PEDIDOS WHERE PEDIDOS.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO)


     
      ,VIEW_PEDIDO_QTDERESTANTE.REFERENCIA
      ,VIEW_PEDIDO_QTDERESTANTE.DESCRICAO
      ,VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO
      
      ,SUM(VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA)
      ,SUM(VIEW_PEDIDO_QTDERESTANTE.QTDECONFERIDA)
      ,SUM(VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTE)
      ,SUM((VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA))
      ,SUM((VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDECONFERIDA))
      ,SUM((VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTE))


      ,SUM(VIEW_PEDIDO_QTDERESTANTE.QTDEFATURADA)
      ,SUM(VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTEFATURAR)
      ,SUM((VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO * VIEW_PEDIDO_QTDERESTANTE.QTDEFATURADA))
      
      
  FROM VIEW_PEDIDO_QTDERESTANTE

GROUP BY 
VIEW_PEDIDO_QTDERESTANTE.CODIGO,
      VIEW_PEDIDO_QTDERESTANTE.REFERENCIA
      ,VIEW_PEDIDO_QTDERESTANTE.DESCRICAO
      ,VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO



GO
/****** Object:  View [dbo].[VIEW_ALERTAESTOQUE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ALERTAESTOQUE](
    EMPRESA,
    CODIGO,
    PRODUTO,
    DESCRICAO,
    QTDE_MAX,
    QTDE_MIN,
    QTDE_TOTAL)
AS
SELECT 
COALESCE(EMPRESA,0),
COALESCE(CODIGO,0),
COALESCE(REFERENCIA,''),
COALESCE(DESCRICAO,''),
COALESCE(ESTOQUEMAXIMO,0),
COALESCE(ESTOQUEMINIMO,0),
COALESCE(ESTOQUESALDO,0)

FROM 
CAD_PRODUTOS

WHERE 
COALESCE(ESTOQUESALDO,0)<=COALESCE(ESTOQUEMINIMO,0)
AND
COALESCE(ESTOQUEMINIMO,0)>0


GO
/****** Object:  View [dbo].[VIEW_ALERTAPAGAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ALERTAPAGAR](
    EMPRESA,
    CODIGO,
    DOCUMENTO,
    NOTAFISCAL,
    DATA,
    VENCIMENTO,
    ATRASO_DIAS,
    VALOR,
    FORNECEDOR,
    FORNECEDOR_NOME,
    QUITADO,
    NOMECIDADE,
    UF,
    FONE)
AS
SELECT
COALESCE(EMPRESA,1),
COALESCE(CODIGO,0),
COALESCE(DOCUMENTO,''),
COALESCE(NOTAFISCAL,0),
COALESCE(DATA,GETDATE()),
VENCIMENTO,
COALESCE(CAST((GETDATE()   - FIN_CTAPAGAR.VENCIMENTO) AS INTEGER),0),
COALESCE(VALOR,0),
COALESCE(FORNECEDOR,0),
COALESCE( (SELECT NOME          FROM CAD_CLIENTES       WHERE   CODIGO=FIN_CTAPAGAR.FORNECEDOR), '***'),
COALESCE(QUITADO,'N'),
COALESCE( (SELECT NOMECIDADE    FROM CAD_CLIENTES       WHERE   CODIGO=FIN_CTAPAGAR.FORNECEDOR), '***'),
COALESCE( (SELECT UF            FROM CAD_CLIENTES       WHERE   CODIGO=FIN_CTAPAGAR.FORNECEDOR), '***'),
COALESCE( (SELECT FONE          FROM CAD_CLIENTES       WHERE   CODIGO=FIN_CTAPAGAR.FORNECEDOR), '***')


FROM FIN_CTAPAGAR
WHERE
COALESCE(FIN_CTAPAGAR.QUITADO,'N')<>'S'
AND
FIN_CTAPAGAR.VENCIMENTO<=GETDATE()+COALESCE( (SELECT ALERTA_CTAPAGAR_DIAS FROM CONFIG_PARAMETROS WHERE EMPRESA=FIN_CTAPAGAR.EMPRESA  ),0)


GO
/****** Object:  View [dbo].[VIEW_ALERTAPEDIDOVENDA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ALERTAPEDIDOVENDA](
    EMPRESA,
    CODIGO,
    TIPO,
    DATA,
    DTENTREGA,
    VALOR,
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    STATUS,
    APROVADO)
AS
SELECT
COALESCE(EMPRESA,0),
COALESCE(CODIGO,0),
COALESCE(TIPO,''),
DATA,
DATA_ENTREGA,
COALESCE(VLR_TOTAL,0),
COALESCE(CLIENTE,0),
COALESCE( (SELECT NOME FROM CAD_CLIENTES   WHERE  CODIGO=PEDIDOS.CLIENTE), '***'),
COALESCE(VENDEDOR,0),
COALESCE( (SELECT NOME FROM CAD_CLIENTES   WHERE  CODIGO=PEDIDOS.VENDEDOR), '***'),
COALESCE(STATUS,   'N'),
COALESCE(APROVADO, 'N')

FROM PEDIDOS
WHERE
COALESCE(STATUS,'N') <> 'S'


GO
/****** Object:  View [dbo].[VIEW_ALERTARECEBER]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ALERTARECEBER](
    EMPRESA,
    CODIGO,
    DOCUMENTO,
    NOTAFISCAL,
    DATA,
    VENCIMENTO,
    ATRASO_DIAS,
    VALOR,
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    QUITADO,
    CIDADENOME,
    UF,
    FONE)
AS
SELECT

COALESCE(EMPRESA,0),
COALESCE(CODIGO,0),
COALESCE(DOCUMENTO,''),
COALESCE(NOTAFISCAL,0),
COALESCE(DATA,getdate()),
VENCIMENTO,
COALESCE(CAST((GETDATE()   - FIN_CTARECEBER.VENCIMENTO) AS INTEGER),0),
COALESCE(VALOR,0),
COALESCE(CLIENTE,0),
COALESCE( (SELECT NOME					FROM CAD_CLIENTES       WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE(VENDEDOR,0),
COALESCE( (SELECT NOME					FROM CAD_CLIENTES		WHERE  CODIGO=FIN_CTARECEBER.VENDEDOR), '***'),
COALESCE(QUITADO,'N'),
COALESCE( (SELECT NOMECIDADE			FROM CAD_CLIENTES		WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE( (SELECT UF					FROM CAD_CLIENTES       WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE( (SELECT FONE					FROM CAD_CLIENTES       WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***')

FROM FIN_CTARECEBER
WHERE
COALESCE(FIN_CTARECEBER.QUITADO,'N')<>'S'
AND
FIN_CTARECEBER.VENCIMENTO<=GETDATE() + COALESCE((SELECT ALERTA_CTARECEBER_DIAS FROM CONFIG_PARAMETROS WHERE EMPRESA=FIN_CTARECEBER.EMPRESA ),0)


GO
/****** Object:  View [dbo].[VIEW_ALERTAVALIDADEPRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ALERTAVALIDADEPRODUTOS](
    EMPRESA,
    CODIGO,
    PRODUTO,
    DESCRICAO,
    QTDE_TOTAL,
    VALIDADE,
    VALIDADE_DIAS
    )
AS
SELECT 
COALESCE(EMPRESA,1),
COALESCE(CODIGO,0),
COALESCE(REFERENCIA,''),
COALESCE(DESCRICAO,''),
COALESCE(ESTOQUESALDO,0),
COALESCE(DT_VALIDADE,GETDATE() ),
COALESCE(CAST((GETDATE()   - CAD_PRODUTOS.DT_VALIDADE) AS INTEGER),0)


FROM CAD_PRODUTOS
WHERE
DT_VALIDADE<=GETDATE() + COALESCE((SELECT ALERTA_VALIDADE_DIAS FROM CONFIG_PARAMETROS WHERE EMPRESA=CAD_PRODUTOS.EMPRESA ),0)


GO
/****** Object:  View [dbo].[VIEW_ATRASOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
getdate()
*/
CREATE VIEW [dbo].[VIEW_ATRASOS](
    EMPRESA,
    CODIGO,
    DOCUMENTO,
    ESPECIE,
    NOSSONUMERO,
    DATA,
    VENCIMENTO,
    DATA_PAGTO,
    DIAS_ATRASO,
    VALOR,
    CPF_CNPJ,
    CLIENTE,
    NOME_CLIENTE,
    FONE,
    CONTATO,
    RESTRICAO,
    VENDEDOR,
    NOME_VENDEDOR,
    CIDADE_UF,
    CONTACAIXA,
    CONTACAIXANOME,
    CONTACAIXASALDOINICIAL,
    CONTACORRENTE,
    CARTEIRA,
    CARTEIRA_NOME,
    DESCONTADO
    
    )
AS
select
COALESCE( EMPRESA,1),
CODIGO,
DOCUMENTO,
ESPECIE,
NOSSONUMERO,
DATA,
VENCIMENTO,
data_pagto,
(getdate() - VENCIMENTO),
VALOR,
coalesce( (select CPF_CNPJ from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***'),
coalesce( CLIENTE,''),
coalesce( (select nome from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***'),
coalesce( (select fone from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***'),
coalesce( (select CONTATO from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***'),
(select bloqueado from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),
coalesce( VENDEDOR,''),
coalesce( (select nome from CAD_CLIENTES where  codigo=VENDEDOR),'***'),
coalesce( (select nomecidade from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE) + ' / ' + (select UF from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'[CIDADE NÃO DEFINIDA]'),
coalesce( CONTACAIXA,0),
coalesce( (select CAD_CONTAS.NOME from CAD_CONTAS where  CAD_CONTAS.CODIGO=FIN_CTARECEBER.contacaixa), '***'),
coalesce( (select CAD_CONTAS.SALDOINICIAL from CAD_CONTAS where  CAD_CONTAS.CODIGO=FIN_CTARECEBER.contacaixa), 0),
coalesce( CONTA_CREDITO,0),
COALESCE( CARTEIRA,0),
COALESCE( (SELECT CAD_CARTEIRA.NOME FROM CAD_CARTEIRA WHERE  CAD_CARTEIRA.CODIGO=FIN_CTARECEBER.CARTEIRA), '***'),

COALESCE( DESCONTADO,'N')



from FIN_CTARECEBER
where
quitado<>'S'

and
VENCIMENTO<=getdate()
;





GO
/****** Object:  View [dbo].[VIEW_BOLETOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_BOLETOS](
    CODIGO,
    NOTAFISCAL,
    DOCUMENTO,
    NOSSONUMERO,
    DATA,
    VENCIMENTO,
    VALOR,
    CLIENTE,
    NOME_CLIENTE,
    VENDEDOR,
    NOME_VENDEDOR,
    GERARBOLETO,
    GERARREMESSA,
    ENDERECO,
    NUMERO,
    ENDERECO_NUMERO,
    CEP,
    CPF_CNPJ,
    RG_IE,
    TIPO,
    NOME_CIDADE,
    UF,
    PLN_CONTA,
    PLN_CONTA_NOME
    )
AS
SELECT
CODIGO,
NOTAFISCAL,
DOCUMENTO,
NOSSONUMERO,
DATA,
VENCIMENTO,
VALOR,
CLIENTE,
COALESCE( (SELECT CAD_CLIENTES.NOME         FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
VENDEDOR,
COALESCE( (SELECT NOME     FROM CAD_CLIENTES                WHERE  CODIGO=FIN_CTARECEBER.VENDEDOR), '***'),
COALESCE( GERARBOLETO, 'N'),
COALESCE( GERARREMESSA, 'N'),
COALESCE( (SELECT CAD_CLIENTES.ENDERECO     FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE( (SELECT CAD_CLIENTES.NUMERO       FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), ''),
COALESCE( (SELECT CAD_CLIENTES.ENDERECO +', '+ CAD_CLIENTES.NUMERO       FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE( (SELECT CAD_CLIENTES.CEP          FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE( (SELECT CAD_CLIENTES.CPF_CNPJ     FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE( (SELECT CAD_CLIENTES.RG_IE        FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE( (SELECT CAD_CLIENTES.TIPO         FROM CAD_CLIENTES     WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),

COALESCE( (SELECT CAD_CLIENTES.NOMECIDADE  FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
COALESCE( (SELECT CAD_CLIENTES.UF           FROM CAD_CLIENTES WHERE  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
FIN_CTARECEBER.PLANO_CONTAS,

COALESCE((( SELECT PLANO_CONTAS_DETALHES.NOME FROM PLANO_CONTAS_DETALHES WHERE PLANO_CONTAS_DETALHES.CODIGO_PLANO =
                    FIN_CTARECEBER.PLANO_CONTAS
        )) , '***' ) AS PLN_CONTA_NOME



FROM FIN_CTARECEBER
WHERE
QUITADO<>'S'
;


GO
/****** Object:  View [dbo].[VIEW_CADPRODUTOS_GRADES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW  [dbo].[VIEW_CADPRODUTOS_GRADES]  (
  REFERENCIA,
  IDENTIFICADOR,
  DESCRICAO,
  UNIDADE,
  COR_ID,
  COR,
  TAMANHO_ID,
  TAMANHO,
  ORDEM_GRADE,
  QUANTIDADE,
  PRC_VENDA

    )
AS
SELECT
    
    DISTINCT
    COALESCE(REFERENCIA,'***'),
    IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(CAD_PRODUTOS_GRADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADES.COR_ID,
                                        CAD_PRODUTOS_GRADES.TAMANHO_ID
                                        ),
    
    
    COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE    CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA), '***'),
    COALESCE( (SELECT UNIDADE FROM CAD_PRODUTOS WHERE    CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA), '***'),
    COR_ID,
    COR,
    TAMANHO_ID,
    TAMANHO,
    ORDEM_GRADE,
    COALESCE( QUANTIDADE,0),

    COALESCE( (SELECT PRC_VENDA FROM CAD_PRODUTOS WHERE    CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA), 0)


 FROM CAD_PRODUTOS_GRADES
 WHERE
 TAMANHO_ID>0
 AND
 COR_ID>0



GO
/****** Object:  View [dbo].[VIEW_CADPRODUTOS_GRADESQUALIDADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_CADPRODUTOS_GRADESQUALIDADE]  (
  REFERENCIA,
  QUALIDADE,
  QUALIDADE_NOME,
  IDENTIFICADOR,
  DESCRICAO,
  UNIDADE,
  COR_ID,
  COR,
  TAMANHO_ID,
  TAMANHO,
  ORDEM_GRADE,
  QUANTIDADE,
  PRC_VENDA

    )
AS
SELECT
    
    DISTINCT
    COALESCE(REFERENCIA,'***'),
    COALESCE(QUALIDADE,0),
    COALESCE( (SELECT DESCRICAO FROM CAD_QUALIDADES WHERE    CAD_QUALIDADES.CODIGO=CAD_PRODUTOS_GRADESQUALIDADES.QUALIDADE), '***'),
    IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA,
                                        CAD_PRODUTOS_GRADESQUALIDADES.COR_ID,
                                        CAD_PRODUTOS_GRADESQUALIDADES.TAMANHO_ID
                                        ),
    
    
    COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE    CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA), '***'),
    COALESCE( (SELECT UNIDADE FROM CAD_PRODUTOS WHERE     CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA), '***'),
    COR_ID,
    COR,
    TAMANHO_ID,
    TAMANHO,
    ORDEM_GRADE,
    COALESCE( QUANTIDADE,0),

    COALESCE( (SELECT PRC_VENDA FROM CAD_PRODUTOS WHERE    CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADESQUALIDADES.REFERENCIA), 0)


 FROM CAD_PRODUTOS_GRADESQUALIDADES
 WHERE
 TAMANHO>''
 AND
 COR_ID>0


GO
/****** Object:  View [dbo].[VIEW_CEDENTES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_CEDENTES](
    CODIGO,
    DESCRICAO,
    BANCO,
    CONVENIO,
    CARTEIRA,
    AGENCIA,
    AGENCIADIGITO,
    CEDENTE,
    CEDENTE_DIGITO,
    CEDENTE_NOME,
    TIPOINSCRICAO,
    INSTRUCOES,
    NOSSONUMERO,
    CPF_CNPJ,
    EXTENSAO)
AS
select CODIGO,
       COALESCE('Banco: '+CAST(COALESCE(BANCO,'') AS VARCHAR(15)) + ' - '+COALESCE(BANCONOME,'') +' - AGENCIA: '+  COALESCE(AGENCIA,'') +' - C/C: '+ COALESCE(CEDENTECODIGO,'') +'-'+ COALESCE(DIGITO,'') + ' - '+
       COALESCE(NOME_CEDENTE,'')+
       ' - Carteira: '+ COALESCE(CARTEIRA,''),'XX'),
       BANCO,
       CONVENIO,
       CARTEIRA,
       AGENCIA,
       AGENCIADIGITO,
       CEDENTECODIGO,
       DIGITO,
       NOME_CEDENTE,
       TIPOINSCRICAO,
       INSTRUCOES,
       PROXIMONOSSONUMERO,
       coalesce( (select top 1 config_parametros.EMPRESA_CNPJ from config_parametros ), '00.000.000/0000-00'),
       EXPORTAR
       from FIN_CONTA_CORRENTE_BOLETO



GO
/****** Object:  View [dbo].[VIEW_CLIENTES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CLIENTES](
CODIGO,
DATA,
TIPO,
CLASSIFICACAO,
NOME,
NOME_FANTASIA,
VENDEDOR,
VENDEDOR_NOME,
REGIAO,
REGIAO_NOME,
CPF_CNPJ,
RG_IE,
ENDERECO,
NUMERO,
ENDERECONUMERO,
ENDERECONUMEROBAIRRO,
BAIRRO,
CEP,
DDD_FONE,
FONE,
DDD_FAX,
FAX,
REFERENCIA,
CIDADECODIGO,
CIDADENOME,
UF,
CIDADEUF,
CONTATO,
EMAIL,
SITE,

ENDCOB_ENDERECO,
ENDCOB_BAIRRO,
ENDCOB_DDD,
ENDCOB_FONE,
ENDCOB_CXP,
ENDCOB_NOMECIDADE,
ENDCOB_UF,
ENDCOB_CEP,

BLOQUEADO,
PROTESTO,
--PROTESTO_DATA,
CREDITO_LIMITE,
CREDITO_DISPONIVEL,
CREDITO_UTILIZADO,
ATIVO,
ETIQUETA




)

AS
SELECT

CODIGO,
COALESCE( DATA,GETDATE() ),
COALESCE( TIPO,''),
COALESCE( CLASSIFICACAO,''),
COALESCE( NOME,''),
COALESCE( NOME_FANTASIA,''),
COALESCE( VENDEDOR, 0 ),
COALESCE( (SELECT CVENDEDOR.NOME FROM CAD_CLIENTES CVENDEDOR WHERE  CVENDEDOR.CODIGO=CAD_CLIENTES.VENDEDOR), '***'),
COALESCE( REGIAO, 0 ),
COALESCE( (SELECT   NOME FROM CAD_REGIOES WHERE CODIGO=CAD_CLIENTES.REGIAO), '***'),
COALESCE(  CPF_CNPJ    , '***'),
COALESCE(  RG_IE       , '***'),
COALESCE(  ENDERECO    , '***'),
COALESCE(  NUMERO      , '***')  ,

ENDERECONUMERO=RTRIM(LTRIM(COALESCE(ENDERECO,'')))+', '+RTRIM(LTRIM(COALESCE(NUMERO,''))),
ENDERECONUMEROBAIRRO=RTRIM(LTRIM(COALESCE(ENDERECO,'')))+', '+RTRIM(LTRIM(COALESCE(NUMERO,'')))  +'   -   '+RTRIM(LTRIM(COALESCE(  BAIRRO      , '***'))),

COALESCE(  BAIRRO      , '***'),
COALESCE(  CEP         , '0000-0000'),
COALESCE(  DDD_FONE    , 0),
COALESCE(  FONE        , '0000-0000'),
COALESCE(  DDD_FAX     , 0),
COALESCE(  FAX         , '0000-0000'),
COALESCE(  REFERENCIA  , '***'),
COALESCE(  CODIGOCIDADE, 0),
COALESCE(  NOMECIDADE  , '***'),
COALESCE(  UF          , '***'),

CIDADEUF=RTRIM(LTRIM(COALESCE(NOMECIDADE,'***')))+', '+RTRIM(LTRIM(COALESCE(UF,'**'))),

COALESCE(  CONTATO     , '***'),
COALESCE(  EMAIL       , '***'),
COALESCE(  SITE        , ''),

COALESCE(  ENDCOB_ENDERECO,     '***'),
COALESCE(  ENDCOB_BAIRRO,       '***'),
COALESCE(  ENDCOB_DDD,          0),
COALESCE(  ENDCOB_FONE,         '***'),
COALESCE(  ENDCOB_CXP,          '***'),
COALESCE(  ENDCOB_NOMECIDADE,   '***'),
COALESCE(  ENDCOB_UF,           '***'),
COALESCE(  ENDCOB_CEP,          '***'),
COALESCE(  BLOQUEADO,           'N'),
COALESCE(  PROTESTO,            'NAO'),
--COALESCE(  PROTESTO_DATA,       '***'),
COALESCE(  CREDITO_LIMITE,      0),
COALESCE(  CREDITO_DISPONIVEL,  0),
COALESCE(  CREDITO_UTILIZADO,   0),
COALESCE(  ATIVO,   'S') ,
COALESCE(  ETIQUETA,   'N') 





FROM CAD_CLIENTES


GO
/****** Object:  View [dbo].[VIEW_COMISSAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_COMISSAO](
    EMPRESA,
    DATA,
    NOTAFISCAL,
    OPERACAO,
    TOTAL,
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    SALARIO,
    COMISSAO_PERC,
    COMISSAO_SALARIO,
    COMISSAO_VENDA)
AS
select

coalesce( EMPRESA,1),
emissao,
NOTAFISCAL,
OPERACAO,
(CASE  WHEN VALOR_PRODUTOS < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  )  ELSE VALOR_PRODUTOS END) ,
CLIENTE,
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=VENDAS.CLIENTE), '***'),
VENDEDOR,
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR), '***'),
(select SALARIO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR),
(select COMISSAO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR),
--(select SALARIO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR)  + VALOR_PRODUTOS * (select COMISSAO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR) /100 ,
(select SALARIO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR)  + (CASE  WHEN VALOR_PRODUTOS < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  )  ELSE VALOR_PRODUTOS  END)  * (select COMISSAO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR) /100 ,


(CASE  WHEN VALOR_PRODUTOS < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  )  ELSE VALOR_PRODUTOS  END) * (select COMISSAO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR) / 100 



from VENDAS

group by

EMPRESA,
emissao,
VENDEDOR,
CLIENTE,
NOTAFISCAL,
OPERACAO,
VALOR_PRODUTOS,
PEDIDO


GO
/****** Object:  View [dbo].[VIEW_COMISSAO_FIN_CTARECEBER]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_COMISSAO_FIN_CTARECEBER] (
    EMPRESA,
    CODIGO,
    DATA,
    VENCIMENTO,
    NOTAFISCAL,
    DOCUMENTO,
    PARCELA,
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    FORMA_PAGTO,
    FORMAPAGTO_NOME,
    VALOR,
    SALARIO,
    COMISSAO,
    COMISSAO_VALOR,
    QUITADO)
AS
select
coalesce( EMPRESA,1),
CODIGO,
DATA,
VENCIMENTO,
coalesce( NOTAFISCAL,0),
coalesce( DOCUMENTO,'***'),
coalesce( PARCELA,0),
coalesce( CLIENTE,0),
coalesce( (select NOME            from CAD_CLIENTES      where  CODIGO=FIN_CTARECEBER.CLIENTE),    '***'),
coalesce( VENDEDOR,0),
coalesce( (select NOME            from CAD_CLIENTES      where  CODIGO=FIN_CTARECEBER.VENDEDOR),   '***'),
coalesce( FORMA_PAGTO,0),
coalesce( (select NOME            from CAD_FORMAPAGTO    where  CODIGO=FIN_CTARECEBER.FORMA_PAGTO),   '***'),
coalesce( VALOR,0),
coalesce( (select SALARIO         from CAD_CLIENTES      where  CODIGO=FIN_CTARECEBER.VENDEDOR),      0 ),
coalesce( (select COMISSAO        from CAD_CLIENTES      where  CODIGO=FIN_CTARECEBER.VENDEDOR),      0 ),
coalesce( (coalesce(  VALOR,0  ) * coalesce((select COMISSAO from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.VENDEDOR),0)  /    100),0), 
coalesce(QUITADO,'N')

FROM FIN_CTARECEBER

WHERE
QUITADO='S'


GO
/****** Object:  View [dbo].[VIEW_COMISSSAO02]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_COMISSSAO02](
    EMPRESA,
    DATA,
    NOTAFISCAL,
    OPERACAO,
    TOTAL,
    CLIENTE,
    CLIENTE_NOME,
    CPF_CNPJ,
    FORMA_PAGTO,
    VENDEDOR,
    VENDEDOR_NOME,
    SALARIO,
    COMISSAO_PERC,
    COMISSAO_SALARIO,
    COMISSAO_VENDA)
AS
select
coalesce( EMPRESA,1),
emissao,
coalesce( NOTAFISCAL,0),
coalesce( OPERACAO,'***'),
coalesce( (CASE  WHEN VALOR_PRODUTOS < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  )  ELSE VALOR_PRODUTOS  END),0),
coalesce( CLIENTE,0),
coalesce( (select NOME      from CAD_CLIENTES    where  CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select CPF_CNPJ  from CAD_CLIENTES    where  CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select NOME      from CAD_FORMAPAGTO  where CODIGO=VENDAS.FORMAPAGTO), '0'),
coalesce( VENDEDOR,0),
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR), '***'),
coalesce( (select SALARIO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR), 0 ),
coalesce( (select COMISSAO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR), 0 ),
-- RETORNAR SALARIO + COMISSÃO NA VENDA

coalesce( 
(
  (select SALARIO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR)
  +

  (CASE  WHEN VALOR_PRODUTOS < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  ) ELSE VALOR_PRODUTOS  END) * (select COMISSAO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR) /100

), 0),

-- RETORNAR COMISSÃO NA VENDA
coalesce(  ((CASE  WHEN VALOR_PRODUTOS < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=VENDAS.PEDIDO  ) ELSE VALOR_PRODUTOS END  ) * (select COMISSAO from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR) /100),0)



 from VENDAS


GO
/****** Object:  View [dbo].[VIEW_COMPRAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_COMPRAS](
    EMPRESA,
    CODIGO,
    DATA,
    ENTRADA,
    NOTAFISCAL,
    PEDIDOCOMPRA,
    FORNECEDOR,
    FORNECEDOR_NOME,
    QTDE_TOTAL,
    VLR_TOTAL,
    BAIXADO)
AS
select

coalesce(EMPRESA,1),
coalesce(CODIGO,0),
DATA,
DATAENTRADA,
coalesce(NOTAFISCAL,0),
coalesce(PEDIDOINTERNO,0),
FORNECEDOR,
coalesce( (select NOME from CAD_CLIENTES        where   CODIGO=COMPRAS.FORNECEDOR), '***'),
QTDE_PRODUTOS,
TOTAL_NF,
ATUALIZADO


 from COMPRAS
;


GO
/****** Object:  View [dbo].[VIEW_COMPRAS_REPORTS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_COMPRAS_REPORTS](
    CODIGO,
    DATA,
    ENTRADA,
    NOTAFISCAL,
    FORNECEDOR,
    FORNECEDOR_NOME,
    QTDE_TOTAL,
    VLR_TOTAL,
    BAIXADO)
AS
select

CODIGO,
DATA,
DATAENTRADA,
NOTAFISCAL,
FORNECEDOR,
coalesce( (select NOME from CAD_CLIENTES        where   CODIGO=COMPRAS.FORNECEDOR), '***'),
QTDE_PRODUTOS,
TOTAL_NF,
ATUALIZADO


 from COMPRAS
;


GO
/****** Object:  View [dbo].[VIEW_CREDITOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CREDITOS](
    CLIENTE,
    NOME,
    NUMERO_NF,
    LIMITE,
    UTILIZADO,
    DISPONIVEL)
AS
select

A.CLIENTE,
B.NOME,
a.NOTAFISCAL,
B.CREDITO_LIMITE,
sum(A.valor) as Utilizado,
B.CREDITO_LIMITE - sum( A.valor)

from FIN_CTARECEBER A, CAD_CLIENTES B
where
B.CODIGO=A.cliente
and
A.quitado='N'

group by    A.CLIENTE, B.NOME, a.NOTAFISCAL, B.CREDITO_LIMITE
-- Todas as VIEWs do banco de dados foram rescritas mas essa não foi possivel
-- padronizar os SELECTs no lugares dos campos como nas outras VIEWs.
;


GO
/****** Object:  View [dbo].[VIEW_CURVA_ABC_CFOP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CURVA_ABC_CFOP](
    CFOP,
    DESCRICAO,
    REGISTROS,
    QTDE_PRODUTOS,
    VALOR_PRODUTOS,
    VALOR_CONTABIL,
    VALOR_BASE_CALCULO,
    VALOR_ICMS)
AS
select
CFOP,
coalesce( (select   DESCRICAO       FROM CAD_CFOP     where  CODIGO=vendas.CFOP),    '***') as DESCRICAO,
count(CFOP) as REGISTROS,
sum(QTDE_PRODUTOS) as QTDE_PRODUTOS,
sum(valor_produtos)  as VALOR_PRODUTOS,
sum(total_nf) as VALOR_CONTABIL ,
sum(ICMS_BASECALCULO) as VALOR_BASE_CALCULO ,
sum(ICMS_VALOR)  as VALOR_ICMS

from vendas

group by  CFOP
;


GO
/****** Object:  View [dbo].[VIEW_DUPLICATAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_DUPLICATAS](
    DATA,
    VENCIMENTO,
    VALOR,
    DOCUMENTO,
    NOTAFISCAL,
    CODCLIENTE,
    NOME,
    ENDERECO,
    FONE,
    MUNICIPIO,
    UF,
    PRACA_PAGAMENTO,
    CEP,
    CPF_CNPJ,
    RG_IE,
    CODVENDEDOR,
    QUITADO,
    ENDCOB_ENDERECO,
    ENDCOB_NOMECIDADE,
    ENDCOB_UF,
    ENDCOB_CEP)
AS
select

DATA,
VENCIMENTO,
VALOR,
DOCUMENTO,
NOTAFISCAL,
CLIENTE,
coalesce( (select NOME          from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select ENDERECO      from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select FONE          from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select NOMECIDADE   from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select UF            from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select NOMECIDADE   from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select CEP           from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), 0),
coalesce( (select CPF_CNPJ      from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select RG_IE         from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
VENDEDOR,
QUITADO,

coalesce( (select ENDCOB_ENDERECO      from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select ENDCOB_NOMECIDADE    from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select ENDCOB_UF            from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
coalesce( (select ENDCOB_CEP           from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***')




from FIN_CTARECEBER
;


GO
/****** Object:  View [dbo].[VIEW_EMAILS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_EMAILS](
    CODIGO,
    DOCUMENTO,
    NOSSONUMERO,
    DATA,
    VENCIMENTO,
    DATA_PAGTO,
    DIAS_ATRASO,
    VALOR,
    CPF_CNPJ,
    CLIENTE,
    NOME_CLIENTE,
    EMAIL,
    FONE,
    CONTATO,
    RESTRICAO,
    VENDEDOR,
    NOME_VENDEDOR,
    CIDADE_UF)
AS
select

CODIGO,
DOCUMENTO,
NOSSONUMERO,
DATA,
VENCIMENTO,
data_pagto,
(GETDATE() - VENCIMENTO),
VALOR,
coalesce( (select CPF_CNPJ from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***'),
coalesce( CLIENTE,0),
coalesce( (select nome from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***'),
coalesce( (select email from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),''),
coalesce( (select fone from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***'),
coalesce( (select CONTATO from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***'),
(select bloqueado from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),
coalesce( VENDEDOR,0),
coalesce( (select nome from CAD_CLIENTES where  codigo=VENDEDOR),'***'),
coalesce( (select nomecidade from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE)+' / '+(select UF from CAD_CLIENTES where  codigo=FIN_CTARECEBER.CLIENTE),'***')

from FIN_CTARECEBER
where
quitado<>'S'

and
VENCIMENTO<=GETDATE()
;


GO
/****** Object:  View [dbo].[VIEW_EMPRESA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW  [dbo].[VIEW_EMPRESA](
EMPRESA,
EMP_NOME,
EMP_NOME_FANTASIA,
EMP_CNPJ,
EMP_IE,
EMP_ENDERECO,
EMP_NUMERO,
EMP_COMPLEMENTO,
EMP_CEP,
EMP_BAIRRO,
EMP_CIDADE,
EMP_UF,
EMP_FONE,
EMP_CONTATO,
EMP_MSG_PEDIDO,
EMP_EMAIL,
EMP_SITE,

SRV_EMPRESA,
SRV_SITE,
SRV_ANO,
SRV_MES,
SRV_DIA

    )
AS
select
COALESCE(EMPRESA,1),
COALESCE(EMPRESA_NOME,'<*** empresa *** >'),
COALESCE(EMPRESA_NOME_FANTASIA,'<*** nome fantasia *** >'),
COALESCE(EMPRESA_CNPJ,'<*** CNPJ *** >'),
COALESCE(EMPRESA_IE,'<*** IE *** >'),
COALESCE(EMPRESA_ENDERECO,'<*** ENDEREÇO *** >'),
COALESCE(EMPRESA_NUMERO,'<*** NUMERO *** >'),
COALESCE(EMPRESA_COMPLEMENTO,'<*** COMPLEMENTO *** >'),
COALESCE(EMPRESA_CEP,'<*** CEP *** >'),
COALESCE(EMPRESA_BAIRRO,'<*** BAIRRO *** >'),
COALESCE(EMPRESA_CIDADE,'<*** CIDADE *** >'),
COALESCE(EMPRESA_UF,'<*** UF *** >'),
COALESCE(EMPRESA_FONE,'<*** FONE *** >'),
COALESCE(EMPRESA_CONTATO,'<*** CONTATO *** >'),
COALESCE(PEDIDO_MENSAGEM,'<*** MENSAGEM PEDIDO *** >'),
COALESCE(EMPRESA_EMAIL,'<*** EMAIL *** >'),
COALESCE(EMPRESA_SITE,'<*** SITE *** >'),
'***',
'***',
YEAR(GETDATE()),

MONTH(GETDATE()),
DAY(GETDATE())




FROM CONFIG_PARAMETROS



GO
/****** Object:  View [dbo].[VIEW_ESTOQUE_MATERIAIS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ESTOQUE_MATERIAIS] (
    EMPRESA,
    CODIGO,
    REFERENCIA,
    TIPO_PRODUTO,
    DESCRICAO,
    UND,
    ESTOQUE_MINIMO,
    ESTOQUE_MAXIMO,
    ESTOQUE_QTDE,
    SALDO_IMPLANTACAO,
    PRC_CUSTO,
    PRC_VENDA,
    GRUPO,
    GRUPO_NOME,
    SUBGRUPO,
    SUBGRUPO_NOME,
    FORNECEDOR,
    FORNECEDOR_NOME)
AS
select

COALESCE(EMPRESA,1),
CODIGO,
REFERENCIA,
TIPO_PRODUTO,
DESCRICAO,
UNIDADE,
ESTOQUEMINIMO,
ESTOQUEMAXIMO,
ESTOQUESALDO,
SALDO_IMPLANTACAO,
PRC_CUSTO,
PRC_VENDA,
coalesce( GRUPO,0),
coalesce( CAST(GRUPO AS VARCHAR(15)) +' - '+(select DESCRICAO        from CAD_GRUPO     where  codigo=CAD_PRODUTOS.grupo ),'***') ,
coalesce( SUBGRUPO, 0),
coalesce( CAST(SUBGRUPO AS VARCHAR(15)) +' - '+(select DESCRICAO     from CAD_SUBGRUPO  where  codigo=CAD_PRODUTOS.grupo ),'***') ,
coalesce( FORNECEDOR,0),
coalesce( (select nome        from CAD_CLIENTES where  CAD_CLIENTES.codigo=CAD_PRODUTOS.FORNECEDOR), '***')

from CAD_PRODUTOS
 where
  TIPO_PRODUTO<>'ACA' or TIPO_PRODUTO<>'ACABADO'


GO
/****** Object:  View [dbo].[VIEW_ESTOQUEVENDA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ESTOQUEVENDA](
    EMPRESA,
    CODIGO,
    TIPO,
    REFERENCIA,
    DESCRICAO,
    ICMS,
    IPI,
    UND,
    QTD_ESTOQUE,
    PRC_VENDA)
AS
select

COALESCE(EMPRESA,1),
CODIGO,
TIPO_PRODUTO,
REFERENCIA,
DESCRICAO,
ICMS,
IPI,
UNIDADE,
ESTOQUESALDO,
PRC_VENDA

from CAD_PRODUTOS
;


GO
/****** Object:  View [dbo].[VIEW_ETIQUETASPRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ETIQUETASPRODUTOS](
    CODIGO,
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    GRUPO,
    SUBGRUPO,
    TIPOPRODUTO,
    UNIDADE,
    PRECO,
    QUANTIDADE,
    COR_CODIGO,
    COR,
    GRADE_ID,
    TAMANHO_ORDEM,
    TAMANHO_CODIGO,
    TAMANHO
    
    )
AS
select

CAD_PRODUTOS.CODIGO,         /* CODIGO */
CAD_PRODUTOS.REFERENCIA,     /* REFERENCIA */

IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(CAD_PRODUTOS.REFERENCIA,
                                    PCP_CORES.ID_COR,
                                    CAD_GRADELISTA.ID_TAMANHO
                                    ),


CAD_PRODUTOS.DESCRICAO,      /* DESCRICAO */
CAD_PRODUTOS.GRUPO,
CAD_PRODUTOS.SUBGRUPO,
CAD_PRODUTOS.TIPO_PRODUTO,
CAD_PRODUTOS.UNIDADE,
CAD_PRODUTOS.PRC_VENDA,
CAD_PRODUTOS.ESTOQUESALDO,

PCP_CORES.ID_COR,            /* COR_CODIGO */
PCP_CORES.NOME,              /* COR */
CAD_GRADELISTA.CODIGO,       /* GRADE_ID */
CAD_GRADELISTA.ORDEM,        /* TAMANHO_ORDEM */
CAD_GRADELISTA.ID_TAMANHO,   /* TAMANHO_CODIGO */
CAD_GRADELISTA.TAMANHO       /* TAMANHO */

from
   CAD_PRODUTOS, PCP_CORES, CAD_GRADELISTA

where

CAD_GRADELISTA.CODIGO=CAD_PRODUTOS.GRADE
and
PCP_CORES.CODIGO=CAD_PRODUTOS.CODIGO


GO
/****** Object:  View [dbo].[VIEW_FATLIQUIDO_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_FATLIQUIDO_PRODUTOS](
    EMPRESA,
    NOTAFISCAL,
    EMISSAO,
    OPERACAO,
    FAT_DADOS,
    PEDIDO,
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    CFOP,
    PRODUTO,
    DESCRICAO,
    VLR_VENDA,
    VLR_DESCONTO,
    VLR_LUCROREAL,
    QUANTIDADE,
    VLR_UNIT,
    IPI,
    VLR_IPI,
    ICMS,
    VLR_ICMS,
    VLR_ISS,
    VLR_DESP_ACESS,
    VLR_TOTAL,
    TOTAL_NF,
    TOTAL_PEDIDO,
    CUPOM)
AS
select
COALESCE(EMPRESA,1),
NOTAFISCAL,
EMISSAO,
coalesce( OPERACAO, '***'),
'PRODUTO: '+PRODUTO+' - '+coalesce( (select DESCRICAO from CAD_PRODUTOS where  referencia=PRODUTO), '[PRODUTO NAO INFORMADO]'),

coalesce( (select PEDIDO from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( CLIENTE,  0),
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=CLIENTE), '***'),
coalesce( VENDEDOR, 0),
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE   ), '***'),
CFOP,
coalesce( PRODUTO, '***'),
coalesce( (select DESCRICAO from CAD_PRODUTOS where  REFERENCIA=PRODUTO), '***'),
coalesce( (select PRC_VENDA from CAD_PRODUTOS where  REFERENCIA=PRODUTO), 0 ),
coalesce( VLR_DESCONTO, 0),
coalesce( ( (select LUCRO_LIQUIDO from CAD_PRODUTOS where  REFERENCIA=PRODUTO) - VENDAS_ITENS.VLR_DESCONTO ), 0),
coalesce( QUANTIDADE,     0),
coalesce( VLR_UNIT, 0),
coalesce( IPI,  0),
coalesce( VLR_IPI,  0),
coalesce( ICMS,  0),
coalesce( VLR_ICMS, 0),
ISS_VALOR,
coalesce( (select VLR_DESPESAS_ASSESSORIAS from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( VLR_TOTAL, 0),
coalesce( (select TOTAL_NF      from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),

(CASE  WHEN (select TOTAL_NF      from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO) < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=(select PEDIDO  from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO)  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=(select PEDIDO  from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO)  ) END),
coalesce( (select CUPOM from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 'N')



from VENDAS_ITENS


GO
/****** Object:  View [dbo].[VIEW_FATPRODUTOS_CLIENTES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- select * from VIEW_FATPRODUTOS_CLIENTES;


CREATE VIEW [dbo].[VIEW_FATPRODUTOS_CLIENTES](
    EMPRESA,
    NOTAFISCAL,
    EMISSAO,
    OPERACAO,
    PEDIDO,
    CLIENTE_TIPO,
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    CNPJ,
    IE,
    ENDERECO,
    CEP,
    BAIRRO,
    FONE,
    CIDADE,
    UF,
    CFOP,
    PRODUTO,
    DESCRICAO,
    QUANTIDADE,
    VLR_UNIT,
    VLR_IPI,
    VLR_ICMS,
    VLR_ISS,
    VLR_DESP_ACESS,
    VLR_TOTAL,
    TOTAL_NF,
    TOTAL_PEDIDO,
    CUPOM
    
    )
AS
select

COALESCE(EMPRESA,1),
coalesce( NOTAFISCAL, 0),
EMISSAO,
coalesce( OPERACAO, '***'),
coalesce( (select PEDIDO from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),

coalesce( (select TIPO from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ), '***'),

coalesce( CLIENTE, 0),
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE   ), '***'),
coalesce( VENDEDOR, 0),
coalesce( CAST(VENDEDOR AS VARCHAR(15) ) +' - '+(select NOME from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE   ), '***'),

coalesce( (select CPF_CNPJ      from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ), '***'),
coalesce( (select RG_IE         from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ), '***'),
coalesce( (select ENDERECO      from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ), '***'),
coalesce( (select CEP           from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ), '0'),
coalesce( (select BAIRRO        from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ), '***'),
coalesce( (select FONE          from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ), '***'),
coalesce( (select NOMECIDADE    from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ),  '***'),
coalesce( (select UF            from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE  ), '***'),

coalesce( (select  CFOP         from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.cfop), 0),
coalesce( PRODUTO, '***'),
coalesce( (select DESCRICAO     from cad_produtos where  REFERENCIA=VENDAS_ITENS.PRODUTO), '***'),
coalesce( QUANTIDADE, 0),
coalesce( VLR_UNIT, 0),
coalesce( VLR_IPI, 0),
coalesce( VLR_ICMS, 0),
coalesce( (select ISS_VALOR     from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( (select VLR_DESPESAS_ASSESSORIAS from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( VLR_TOTAL, 0),
coalesce( (select TOTAL_NF      from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
(CASE  WHEN (select TOTAL_NF      from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO) < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=(select PEDIDO  from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO)  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=(select PEDIDO  from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO)  ) END),
coalesce( (select CUPOM from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 'N')


 from VENDAS_ITENS


GO
/****** Object:  View [dbo].[VIEW_FATURAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_FATURAS](
    EMPRESA,
    CLIENTE,
    DOCUMENTO,
    NRO_NOTA,
    NOME_CLIENTE,
    DATA,
    VENCIMENTO,
    VALOR,
    GERARCOMPLEMENTO,
    QUITADO
    )
AS
select

COALESCE(A.EMPRESA,1),
A.CLIENTE,
A.DOCUMENTO,
A.NOTAFISCAL,
B.NOME,
A.DATA,
A.VENCIMENTO,
A.VALOR,
Coalesce( A.GERARCOMPLEMENTO,'N'),

CASE A.QUITADO
  when 'N' then 'A PAGAR'
  when 'S' then 'PAGO'
end as  SITUACAO

 from FIN_CTARECEBER A, CAD_CLIENTES B
where
B.CODIGO=A.CLIENTE
;


GO
/****** Object:  View [dbo].[VIEW_FECHAMENTOCAIXA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_FECHAMENTOCAIXA]   (
      EMPRESA,
      CODIGO,
      TERMINAL,
      DATA_ABERTURA,
      DATA_FECHAMENTO,
      CONTACAIXA,
      CONTACAIXANOME,
      CAIXAABERTO,
      CAIXAFECHADO,
      HISTORICO,

      VLR_ENTRADAS,
      VLR_SAIDAS,
      VLR_ABERTURACAIXA,
      VLR_TOTALVENDASCAIXA,
      VLR_FECHAMENTOCAIXA,
      
      TIPOPAGAMENTO,
      FORMAPAGAMENTO,


      VALOR
    
    )
AS
SELECT

      FIN_REGISTROSDIARIOS.EMPRESA,
      FIN_REGISTROSDIARIOS.CODIGO,
      FIN_REGISTROSDIARIOS.TERMINAL,
      FIN_REGISTROSDIARIOS.DATA_ABERTURA,
      FIN_REGISTROSDIARIOS.DATA_FECHAMENTO,
      FIN_REGISTROSDIARIOS.CONTACAIXA,
      Coalesce((SELECT CAD_CONTAS.NOME FROM CAD_CONTAS WHERE CAD_CONTAS.CODIGO=FIN_REGISTROSDIARIOS.CONTACAIXA ),'***'),
      FIN_REGISTROSDIARIOS.CAIXAABERTO,
      FIN_REGISTROSDIARIOS.CAIXAFECHADO,
      FIN_REGISTROSDIARIOS.HISTORICO,

      FIN_REGISTROSDIARIOS.VLR_ENTRADAS,
      FIN_REGISTROSDIARIOS.VLR_SAIDAS,
      FIN_REGISTROSDIARIOS.VLR_ABERTURACAIXA,
      FIN_REGISTROSDIARIOS.VLR_TOTALVENDASCAIXA,
      --FIN_REGISTROSDIARIOS.VLR_FECHAMENTOCAIXA,
      VLR_FECHAMENTOCAIXA=coalesce((FIN_REGISTROSDIARIOS.VLR_ABERTURACAIXA) + (FIN_REGISTROSDIARIOS.VLR_ENTRADAS) + (FIN_REGISTROSDIARIOS.VLR_TOTALVENDASCAIXA) - (FIN_REGISTROSDIARIOS.VLR_SAIDAS) ,0),

      FIN_REGISTROSDIARIOSDETALHES.TIPOPAGAMENTO,
      FIN_REGISTROSDIARIOSDETALHES.FORMAPAGAMENTO,
      FIN_REGISTROSDIARIOSDETALHES.VALOR

FROM FIN_REGISTROSDIARIOS
INNER JOIN FIN_REGISTROSDIARIOSDETALHES ON 
FIN_REGISTROSDIARIOSDETALHES.EMPRESA=FIN_REGISTROSDIARIOS.EMPRESA
AND
FIN_REGISTROSDIARIOSDETALHES.CODIGO=FIN_REGISTROSDIARIOS.CODIGO


WHERE
FIN_REGISTROSDIARIOS.VLR_TOTALVENDASCAIXA>0
AND
FIN_REGISTROSDIARIOS.VLR_FECHAMENTOCAIXA>0


GO
/****** Object:  View [dbo].[VIEW_FIN_CAIXA_CONTAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_FIN_CAIXA_CONTAS] (
    DATA,
    TIPO,
    
    CONTACAIXA,
    CONTACAIXANOME,
    CONTACAIXASALDOINICIAL,

    RECEITAS,
    DESPESAS,
    DEPARTAMENTO,
    DEPARTAMENTONOME,
    PLANOCONTA,
    PLANOCONTANOME,
    HITORICO)
AS
select
DATA,
coalesce( (select PLANO_CONTAS_DETALHES.TIPO from PLANO_CONTAS_DETALHES where  PLANO_CONTAS_DETALHES.CODIGO_PLANO=ctrl_caixa.pln_conta), '***'),
coalesce( CONTACAIXA,0),
coalesce( (select CAD_CONTAS.NOME from CAD_CONTAS where  CAD_CONTAS.CODIGO=ctrl_caixa.contacaixa), '***'),
coalesce( (select CAD_CONTAS.SALDOINICIAL from CAD_CONTAS where  CAD_CONTAS.CODIGO=ctrl_caixa.contacaixa), 0),

coalesce( vlr_credito,0),
coalesce( vlr_debito,0),
DEPARTAMENTO,
coalesce( (select NOME from CAD_DEPARTAMENTOS where          CODIGO=ctrl_caixa.DEPARTAMENTO),    '***'),

PLN_CONTA,
coalesce( (select NOME from PLANO_CONTAS_DETALHES where  CODIGO_PLANO=ctrl_caixa.pln_conta), '***'),

coalesce( historico,'[NÃO HÁ HISTÓRICO INFORMADO]')

from ctrl_caixa
;



GO
/****** Object:  View [dbo].[VIEW_FIN_COMISSOES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW  [dbo].[VIEW_FIN_COMISSOES] (
EMPRESA,
CODIGO,
DATA,
VENCIMENTO,
DATA_PAGTO,
CLIENTE,
CLIENTE_NOME,
VENDEDOR,
VENDEDOR_NOME,
DOCUMENTO,
NOTAFISCAL,
CONFERENCIA,
PEDIDO,
PEDIDOII,
FORMA_PAGTO,
CONTACORRENTE,
CONTACAIXA,
DEPARTAMENTO,
PLANO_CONTAS,
ORIGEM,
DC,
COMISSAO,

VALOR_VENDA,

VALOR,
VALOR_PAGO,
VALOR_SALDO,

HISTORICO,
OBSERVACAO,
ATRASADA,
QUITADO,
SELECIONADO,
NATUREZA
    
    )
AS
SELECT  
        COALESCE(EMPRESA,1),
        COALESCE(CODIGO,0),
        DATA,
        VENCIMENTO,
        DATA_PAGTO,
        COALESCE(CLIENTE, 0),
        COALESCE(((SELECT TOP 1 CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO = FIN_COMISSOES.CLIENTE )) , '***' ) AS NOME_CLIENTE,
        COALESCE(VENDEDOR, 0) AS VENDEDOR,
        COALESCE(((SELECT  TOP 1 CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO = FIN_COMISSOES.VENDEDOR)) , '***' ) AS NOME_VENDEDOR,
        COALESCE(DOCUMENTO,''),
        COALESCE(NOTAFISCAL,0),
        COALESCE(CONFERENCIA,0),
        
        COALESCE(PEDIDO,0),
        
        COALESCE(PEDIDOPARALELO,''),
        
        COALESCE(FORMA_PAGTO,0),
        COALESCE(CONTACORRENTE,0),
        COALESCE(CONTACAIXA,0),
        COALESCE(DEPARTAMENTO,0),
        COALESCE(PLANO_CONTAS,''),
        COALESCE(ORIGEM,''),
        COALESCE(DC,'CREDITO'),

        COALESCE( COMISSAO,0),

        COALESCE( VALOR_VENDA,0),

        COALESCE( VALOR,0),
        COALESCE( VALOR_PAGO,0),
        COALESCE( VALOR_SALDO,0),

        COALESCE( HISTORICO, ''  ),
        COALESCE( OBSERVACAO, ''  ),
        
        COALESCE( ATRASADA,'N'),
        COALESCE( QUITADO,'N'),
        COALESCE( SELECIONADO,'N'),
        COALESCE( NATUREZA,'VENDA')
        
        
 FROM FIN_COMISSOES;






GO
/****** Object:  View [dbo].[VIEW_FIN_CONTROLECAIXA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_FIN_CONTROLECAIXA] (
    DATA,
    TIPO,
    
    CONTACAIXA,
    CONTACAIXANOME,
    CONTACAIXASALDOINICIAL,

    RECEITAS,
    DESPESAS,
    DEPARTAMENTO,
    DEPARTAMENTONOME,
    PLANOCONTA,
    PLANOCONTANOME,
    HITORICO)
AS
select
DATA,
coalesce( (select PLANO_CONTAS_DETALHES.TIPO from PLANO_CONTAS_DETALHES where  PLANO_CONTAS_DETALHES.CODIGO_PLANO=ctrl_caixa.pln_conta), '***'),
coalesce( CONTACAIXA,0),
coalesce( (select CAD_CONTAS.NOME from CAD_CONTAS where  CAD_CONTAS.CODIGO=ctrl_caixa.contacaixa), '***'),
coalesce( (select CAD_CONTAS.SALDOINICIAL from CAD_CONTAS where  CAD_CONTAS.CODIGO=ctrl_caixa.contacaixa), 0),

coalesce( vlr_credito,0),
coalesce( vlr_debito,0),
DEPARTAMENTO,
coalesce( (select NOME from CAD_DEPARTAMENTOS where          CODIGO=ctrl_caixa.DEPARTAMENTO),    '***'),

PLN_CONTA,
coalesce( (select NOME from PLANO_CONTAS_DETALHES where  CODIGO_PLANO=ctrl_caixa.pln_conta), '***'),

coalesce( historico,'[NÃO HÁ HISTÓRICO INFORMADO]')

from ctrl_caixa
;


GO
/****** Object:  View [dbo].[VIEW_FIN_CTAPAGAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_FIN_CTAPAGAR] (
    EMPRESA,
    CODIGO,
    DOCUMENTO,
    ESPECIE,
    NOTAFISCAL,
    DATA,
    VENCIMENTO,
    DATA_PAGTO,
    NOSSONUMERO,
    VALOR,
    VALOR_PAGO,
    VALOR_SALDO,
    FORNECEDOR,
    NOME_FORNECEDOR,
    CIDADE_UF,
    PLN_CONTA,
    PLN_CONTA_NOME,
    QUITADO,
    ATRASO_DIAS,
    BLOQUEADO,
    HISTORICO,
    COMPLEMENTAR,
    CONTACAIXA,
    CONTACAIXANOME,
    CONTACAIXASALDOINICIAL,
    CONTACORRENTE,

    DESCONTO,
    DESCONTOVALOR,
    DESPESAS_JUROS,
    DESPESAS_JUROSVALOR,   
    DESPESAS_MULTA,
    DESPESAS_CARTORIO,
    DESPESAS_OUTRAS,
    DESPESAS_TOTAL    
    
    
    )
AS
SELECT  
        COALESCE(FIN_CTAPAGAR.EMPRESA,1),
        COALESCE(FIN_CTAPAGAR.CODIGO,0),
        COALESCE(FIN_CTAPAGAR.DOCUMENTO,''),
        COALESCE(FIN_CTAPAGAR.ESPECIE,''),
        COALESCE(FIN_CTAPAGAR.NOTAFISCAL,0),
        FIN_CTAPAGAR.DATA,
        FIN_CTAPAGAR.VENCIMENTO,
        FIN_CTAPAGAR.DATA_PAGTO,
        COALESCE(FIN_CTAPAGAR.NOSSONUMERO,''),

        CASE
           WHEN COALESCE(FIN_CTAPAGAR.COMPLEMENTAR,'N')='N' THEN  COALESCE(FIN_CTAPAGAR.VALOR, 0)
           WHEN COALESCE(FIN_CTAPAGAR.COMPLEMENTAR,'S')='S' THEN  0
        END,
        
        COALESCE(FIN_CTAPAGAR.VALOR_PAGO, 0),
        
        COALESCE(FIN_CTAPAGAR.VALOR_SALDO, 0),
        COALESCE(FIN_CTAPAGAR.FORNECEDOR, 0),
        COALESCE(( SELECT  top 1  CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO =FIN_CTAPAGAR.FORNECEDOR ) , '***' ),
        COALESCE(( SELECT  top 1  CAD_CLIENTES.NOMECIDADE FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO =FIN_CTAPAGAR.FORNECEDOR ) , '***' ),
        FIN_CTAPAGAR.PLANO_CONTAS,

        COALESCE((SELECT top 1 PLANO_CONTAS_DETALHES.NOME FROM PLANO_CONTAS_DETALHES WHERE PLANO_CONTAS_DETALHES.CODIGO_PLANO = FIN_CTAPAGAR.PLANO_CONTAS ) , '***' ),
        COALESCE(FIN_CTAPAGAR.QUITADO, 'N' ),
        CAST((GETDATE()   - FIN_CTAPAGAR.VENCIMENTO) AS INTEGER) ,
        COALESCE((SELECT   top 1 CAD_CLIENTES.BLOQUEADO   FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO = FIN_CTAPAGAR.FORNECEDOR),'N'),
        COALESCE(FIN_CTAPAGAR.HISTORICO, '' ),
        COALESCE( FIN_CTAPAGAR.COMPLEMENTAR,'N'),
        COALESCE( CONTACAIXA,0),
        COALESCE( (SELECT  top 1 CAD_CONTAS.NOME FROM CAD_CONTAS WHERE  CAD_CONTAS.CODIGO=FIN_CTAPAGAR.CONTACAIXA), '***'),
        COALESCE( (SELECT  top 1 CAD_CONTAS.SALDOINICIAL FROM CAD_CONTAS WHERE  CAD_CONTAS.CODIGO=FIN_CTAPAGAR.CONTACAIXA), 0),
        coalesce( CONTA_CREDITO,0),
        
        coalesce( DESCONTO,0),
        coalesce( DESCONTOVALOR,0),
        coalesce( DESPESAS_JUROS,0),
        coalesce( DESPESAS_JUROSVALOR,0),
        coalesce( DESPESAS_MULTA,0),
        coalesce( DESPESAS_CARTORIO,0),
        coalesce( DESPESAS_BOLETO,0),
        coalesce( DESPESAS_TOTAL,0)
        
        

 FROM FIN_CTAPAGAR 
WHERE
FIN_CTAPAGAR.VALOR_PAGO>0 OR FIN_CTAPAGAR.VALOR > 0


GO
/****** Object:  View [dbo].[VIEW_FIN_CTARECEBER]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VIEW_FIN_CTARECEBER](
    EMPRESA,
    CODIGO,
    DOCUMENTO,
    ESPECIE,
    NOTAFISCAL,
    DATA,
    VENCIMENTO,
    DATA_PAGTO,
    DATA_PAGTODIAS,
    ATRASO_DIAS,
    PRAZO_DIAS,
    FORMAPAGAMENTO,
    NOSSONUMERO,
    VALOR,
    VALOR_PAGO,
    VALOR_SALDO,
    VALOR_DIFERENCA,
    CLIENTE,
    NOME_CLIENTE,
    VENDEDOR,
    NOME_VENDEDOR,
    CIDADE_UF,
    PLN_CONTA,
    PLN_CONTA_NOME,
    QUITADO,
    BLOQUEADO,
    HISTORICO,
    COMPLEMENTAR,
    GERARCOMPLEMENTO,

    CONTACAIXA,
    CONTACAIXANOME,
    CONTACAIXASALDOINICIAL,
    CARTEIRA,
    CARTEIRA_NOME,


    CONTACORRENTE,
    
    DESCONTO,
    DESCONTOVALOR,
    DESPESAS_JUROS,
    DESPESAS_JUROSVALOR,   
    DESPESAS_MULTA,
    DESPESAS_CARTORIO,
    DESPESAS_OUTRAS,
    DESPESAS_TOTAL,
    DESCONTADO,
    PAGAMENTOTITULO
      
    
    
    
    )
AS
SELECT  
        COALESCE(FIN_CTARECEBER.EMPRESA,1),
        COALESCE(FIN_CTARECEBER.CODIGO,0),
        COALESCE(FIN_CTARECEBER.DOCUMENTO,''),
        COALESCE(FIN_CTARECEBER.ESPECIE,''),
        COALESCE(FIN_CTARECEBER.NOTAFISCAL,0),
        FIN_CTARECEBER.DATA,
        FIN_CTARECEBER.VENCIMENTO,
        FIN_CTARECEBER.DATA_PAGTO,
        
        
        --CAST((GETDATE()   - FIN_CTARECEBER.VENCIMENTO) AS INTEGER) ,
       
       DATA_PAGTODIAS= 
       CASE
           WHEN CAST((FIN_CTARECEBER.VENCIMENTO   - FIN_CTARECEBER.DATA_PAGTO) AS INTEGER) < 1 AND QUITADO='N'    THEN  0
           WHEN CAST((FIN_CTARECEBER.VENCIMENTO   - FIN_CTARECEBER.DATA_PAGTO) AS INTEGER) > 0  AND QUITADO='N'   THEN CAST((FIN_CTARECEBER.VENCIMENTO   - FIN_CTARECEBER.DATA_PAGTO) AS INTEGER)
           ELSE
           0
        END,        

        ATRASO_DIAS=
        CASE
           WHEN CAST((GETDATE()   - FIN_CTARECEBER.VENCIMENTO) AS INTEGER) < 1  AND QUITADO='N'  THEN  0
           WHEN CAST((GETDATE()   - FIN_CTARECEBER.VENCIMENTO) AS INTEGER) > 0  AND QUITADO='N'   THEN CAST((GETDATE()   - FIN_CTARECEBER.VENCIMENTO) AS INTEGER)
           ELSE
           0
        END,        

        
       PRAZO_DIAS= 
       CASE
           WHEN CAST((COALESCE(FIN_CTARECEBER.DATA_PAGTO,GETDATE())   - FIN_CTARECEBER.DATA) AS INTEGER) < 1  AND QUITADO='N'  THEN  0
           WHEN CAST((COALESCE(FIN_CTARECEBER.DATA_PAGTO,GETDATE())   - FIN_CTARECEBER.DATA) AS INTEGER) > 0  AND QUITADO='N'   THEN CAST((COALESCE(FIN_CTARECEBER.DATA_PAGTO,GETDATE())   - FIN_CTARECEBER.DATA) AS INTEGER)
           ELSE
           0
        END,        

        COALESCE(((SELECT TOP 1 CAD_FORMAPAGTO.NOME FROM CAD_FORMAPAGTO WHERE CAD_FORMAPAGTO.CODIGO = FIN_CTARECEBER.FORMA_PAGTO )) , '***' ),
        COALESCE(FIN_CTARECEBER.NOSSONUMERO,''),
        --COALESCE(FIN_CTARECEBER.VALOR, 0),
        
        CASE
           WHEN COALESCE(FIN_CTARECEBER.COMPLEMENTAR,'N')='N'    THEN       COALESCE(FIN_CTARECEBER.VALOR, 0)
           WHEN COALESCE(FIN_CTARECEBER.COMPLEMENTAR,'S')='S'    THEN       0
        END,        
        
        COALESCE(FIN_CTARECEBER.VALOR_PAGO, 0),
        COALESCE(FIN_CTARECEBER.VALOR_SALDO, 0),
        
        CASE
           WHEN COALESCE(FIN_CTARECEBER.VALOR_PAGO, 0) > 0  THEN       COALESCE(FIN_CTARECEBER.VALOR, 0) - COALESCE(FIN_CTARECEBER.VALOR_PAGO, 0)
           ELSE
           0
        END,        
        
        
        
        COALESCE(FIN_CTARECEBER.CLIENTE, 0),
        COALESCE(((SELECT TOP 1 CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO = FIN_CTARECEBER.CLIENTE )) , '***' ) AS NOME_CLIENTE,
        COALESCE(FIN_CTARECEBER.VENDEDOR, 0) AS VENDEDOR,
        COALESCE(((SELECT  TOP 1 CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO = FIN_CTARECEBER.VENDEDOR)) , '***' ) AS NOME_VENDEDOR,
        COALESCE(((((SELECT  TOP 1 CAD_CLIENTES.NOMECIDADE FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO = FIN_CTARECEBER.CLIENTE )) ) + ' / ' ) +((( SELECT  TOP 1 CAD_CLIENTES.UF  FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO = FIN_CTARECEBER.CLIENTE )) ), '***' ) AS CIDADE_UF,
        FIN_CTARECEBER.PLANO_CONTAS,
        COALESCE(((SELECT  TOP 1 PLANO_CONTAS_DETALHES.NOME FROM PLANO_CONTAS_DETALHES WHERE PLANO_CONTAS_DETALHES.CODIGO_PLANO = FIN_CTARECEBER.PLANO_CONTAS )) , '***' ) AS PLN_CONTA_NOME,

        CASE
           WHEN COALESCE(FIN_CTARECEBER.QUITADO,'N')='N' THEN  'NAO'
           WHEN COALESCE(FIN_CTARECEBER.QUITADO,'S')='S' THEN  'SIM'
        END,
        
        
        (SELECT  TOP 1 CAD_CLIENTES.BLOQUEADO FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO = FIN_CTARECEBER.CLIENTE ) AS BLOQUEADO,
        COALESCE(FIN_CTARECEBER.HISTORICO, ''  ) AS HISTORICO,
        COALESCE( FIN_CTARECEBER.COMPLEMENTAR,'N'),
        COALESCE( FIN_CTARECEBER.GERARCOMPLEMENTO,'N'),
        COALESCE( CONTACAIXA,0),
        COALESCE( (SELECT CAD_CONTAS.NOME FROM CAD_CONTAS WHERE  CAD_CONTAS.CODIGO=FIN_CTARECEBER.CONTACAIXA), '***'),
        COALESCE( (SELECT CAD_CONTAS.SALDOINICIAL FROM CAD_CONTAS WHERE  CAD_CONTAS.CODIGO=FIN_CTARECEBER.CONTACAIXA), 0),

        COALESCE( CARTEIRA,0),
        COALESCE( (SELECT CAD_CARTEIRA.NOME FROM CAD_CARTEIRA WHERE  CAD_CARTEIRA.CODIGO=FIN_CTARECEBER.CARTEIRA), '***'),
        
        COALESCE( CONTA_CREDITO,0),
        COALESCE( DESCONTO,0),
        COALESCE( DESCONTOVALOR,0),
        COALESCE( DESPESAS_JUROS,0),
        COALESCE( DESPESAS_JUROSVALOR,0),
        COALESCE( DESPESAS_MULTA,0),
        COALESCE( DESPESAS_CARTORIO,0),
        COALESCE( DESPESAS_BOLETO,0),
        COALESCE( DESPESAS_TOTAL,0),
        COALESCE( DESCONTADO,'NAO'),
        COALESCE( PAGAMENTOTITULO,'NAO')
        
        
        
        
 FROM FIN_CTARECEBER;








GO
/****** Object:  View [dbo].[VIEW_GRADEREFERENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- select * from VIEW_GRADEREFERENCIA

CREATE VIEW [dbo].[VIEW_GRADEREFERENCIA](
    CODIGO,
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    COR_CODIGO,
    COR,
    GRADE_ID,
    TAMANHO_ORDEM,
    TAMANHO_CODIGO,
    TAMANHO)
AS
select

CAD_PRODUTOS.CODIGO,         /* CODIGO */
CAD_PRODUTOS.REFERENCIA,     /* REFERENCIA */

IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(CAD_PRODUTOS.REFERENCIA,
                                    PCP_CORES.ID_COR,
                                    CAD_GRADELISTA.ID_TAMANHO
                                    ),

CAD_PRODUTOS.DESCRICAO,      /* DESCRICAO */
PCP_CORES.ID_COR,            /* COR_CODIGO */
PCP_CORES.NOME,              /* COR */
CAD_GRADELISTA.CODIGO,       /* GRADE_ID */
CAD_GRADELISTA.ORDEM,        /* TAMANHO_ORDEM */
CAD_GRADELISTA.ID_TAMANHO,   /* TAMANHO_CODIGO */
CAD_GRADELISTA.TAMANHO       /* TAMANHO */

from
   CAD_PRODUTOS, PCP_CORES, CAD_GRADELISTA

where

CAD_GRADELISTA.CODIGO=CAD_PRODUTOS.GRADE
and
PCP_CORES.CODIGO=CAD_PRODUTOS.CODIGO


GO
/****** Object:  View [dbo].[VIEW_INADIMPLENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_INADIMPLENCIA](
    CLIENTE,
    NOME_CLIENTE,
    DATA,
    VENCIMENTO,
    DOCUMENTO,
    VALOR,
    ATRASO_DIAS)
AS
select

CLIENTE,
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=FIN_CTARECEBER.CLIENTE), '***'),
DATA,
VENCIMENTO,
DOCUMENTO,
VALOR,
( GETDATE() - VENCIMENTO )

from FIN_CTARECEBER
where
QUITADO<>'S'
and
VENCIMENTO<=GETDATE() 
--AND
--(SELECT ATRADO_PERMITIDO FROM PARAMETROS   )>=(  current_date - VENCIMENTO  )
;


GO
/****** Object:  View [dbo].[VIEW_MOVIMENTOS_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_MOVIMENTOS_PRODUTOS]  (
  EMPRESA,
  APROVADO,
  DATAMOVIMENTO,
  DATA,
  DATAENTREGA,
  PEDIDO,
  REFERENCIA,
  IDENTIFICADOR,
  DESCRICAO,
  UNIDADE,
  PRC_VENDA,
  GRIFE,
  GRIFE_NOME,
  COLECAO,
  COLECAO_NOME,
  GRUPO,
  GRUPO_NOME,
  SUBGRUPO,
  SUBGRUPO_NOME,
  FAIXAETARIA,
  FAIXAETARIA_NOME,
  GENERO,
  GENERO_NOME,
  GRADETAMANHO,
  GRADETAMANHO_NOME,
  NCM,
  COR_ID,
  COR,
  TAMANHO_ID,
  TAMANHO,
  ORDEM_GRADE,
  QTDE_VENDIDO,
  QTDE_DEMANDA,
  QTDE_PRODUZIR,
  QTDE_PRODUZIDO,
  QTDE_PRODUZINDO,
  QTDE_EXCEDENTE,
  QTDE_PERDAS,
  QTDE_DEFEITOS,
  QTDE_FISICO,
  QTDE_RESERVADO,
  CONCLUIDO
    )
AS
SELECT
    
    DISTINCT
    COALESCE(EMPRESA,1),
    COALESCE(APROVADO,'N'),
    DATAMOVIMENTO,
    DATA,
    DATAENTREGA,
    COALESCE(PEDIDO,0),
    COALESCE(REFERENCIA,'***'),
    
    IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(MOVIMENTOS_PRODUTOS.REFERENCIA,
                                        MOVIMENTOS_PRODUTOS.COR_ID,
                                        MOVIMENTOS_PRODUTOS.TAMANHO_ID
                                        ),
    
    COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), '***'),
    COALESCE( (SELECT UNIDADE FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), '***'),
    COALESCE( (SELECT PRC_VENDA FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), '***'),
    COALESCE( (SELECT GRIFE FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), 0),
    COALESCE( (SELECT NOME  FROM CAD_GRIFES WHERE CAD_GRIFES.CODIGO=(SELECT GRIFE FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA)   ), '***'),
    COALESCE( (SELECT COLECAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), 0),
    COALESCE( (SELECT NOME  FROM CAD_COLECAO WHERE CAD_COLECAO.CODIGO=(SELECT COLECAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA)   ), '***'),
    COALESCE( (SELECT GRUPO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), 0),
    COALESCE( (SELECT DESCRICAO  FROM CAD_GRUPO WHERE CAD_GRUPO.CODIGO=(SELECT GRUPO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA)   ), '***'),
    COALESCE( (SELECT SUBGRUPO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), 0),
    COALESCE( (SELECT DESCRICAO  FROM CAD_SUBGRUPO WHERE CAD_SUBGRUPO.CODIGO=(SELECT SUBGRUPO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA)   ), '***'),
    COALESCE( (SELECT FAIXA_ETARIA FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), 0),
    COALESCE( (SELECT NOME  FROM CAD_FAIXAETARIA WHERE CAD_FAIXAETARIA.CODIGO=(SELECT FAIXA_ETARIA FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA)   ), '***'),
    COALESCE( (SELECT GENERO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), 0),
    COALESCE( (SELECT NOME  FROM CAD_GENERO WHERE CAD_GENERO.CODIGO=(SELECT GENERO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA)   ), '***'),
    COALESCE( (SELECT GRADE FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), 0),
    COALESCE( (SELECT DESCRICAO  FROM CAD_GRADE WHERE CAD_GRADE.CODIGO=(SELECT GRADE FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA)   ), '***'),
    COALESCE( (SELECT NCM FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.TIPO_PRODUTO='ACA' AND CAD_PRODUTOS.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA), '***'),
    COR_ID,
    COR,
    TAMANHO_ID,
    TAMANHO,
    ORDEM_GRADE,
    COALESCE(QTDE_VENDIDO,0),
    COALESCE(QTDE_DEMANDA,0),
    COALESCE(QTDE_PRODUZIR,0),
    COALESCE(QTDE_PRODUZIDO,0),
    COALESCE(QTDE_PRODUZINDO,0),
    
   case 
      when COALESCE( QTDE_DEMANDA,0)>0 then COALESCE( QTDE_DEMANDA,0) 
   else 
      0 
   end,
       
    COALESCE(QTDE_PERDAS,0),
    COALESCE(QTDE_DEFEITOS,0),

    QTDE_FISICO=COALESCE(
                         (SELECT SUM(CAD_PRODUTOS_GRADES.QUANTIDADE) FROM CAD_PRODUTOS_GRADES
                          WHERE 
                          --CAD_PRODUTOS_GRADES.EMPRESA=MOVIMENTOS_PRODUTOS.EMPRESA
                          --AND
                          CAD_PRODUTOS_GRADES.REFERENCIA=MOVIMENTOS_PRODUTOS.REFERENCIA
                          AND
                          CAD_PRODUTOS_GRADES.COR_ID=MOVIMENTOS_PRODUTOS.COR_ID
                          AND
                          CAD_PRODUTOS_GRADES.TAMANHO_ID=MOVIMENTOS_PRODUTOS.TAMANHO_ID
                         ) ,0),
    
    
    COALESCE((QTDE_FISICO - QTDE_VENDIDO),0),
    
    case
       when QTDE_PRODUZIR>0 Then COALESCE(((QTDE_PRODUZIDO * 100) / QTDE_PRODUZIR),0)
    else
       0
    end   


 FROM MOVIMENTOS_PRODUTOS
 WHERE
 TAMANHO>'0' AND TAMANHO>''
 AND
 MOVIMENTOS_PRODUTOS.APROVADO='S'


GO
/****** Object:  View [dbo].[VIEW_NECESSIDADEPRODUCAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VIEW_NECESSIDADEPRODUCAO](
    EMPRESA,
    DATA,
    DATAENTREGA,
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    COLECAO,
    COLECAO_NOME,
    COR_ID,
    COR,
    TAMANHO_ID,
    TAMANHO,
    ORDEM_GRADE,
    QUANTIDADE)
    
AS
SELECT
COALESCE(EMPRESA,1),
COALESCE( (SELECT DATA               FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),GETDATE()),
COALESCE( (SELECT DATA_ENTREGA       FROM PEDIDOS       WHERE  PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO),GETDATE()),
COALESCE(REFERENCIA,'***'),

IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(PEDIDOS_ITENS_GRADE.REFERENCIA,
                                    PEDIDOS_ITENS_GRADE.COR_ID,
                                    PEDIDOS_ITENS_GRADE.TAMANHO_ID
                                    ),


COALESCE( (SELECT DESCRICAO   FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA), '***'),

COLECAO=COALESCE(        (SELECT COLECAO     FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA), 0),
COLECAO_NOME=COALESCE( (SELECT NOME        FROM CAD_COLECAO       WHERE CAD_COLECAO.CODIGO=COALESCE(        (SELECT COLECAO     FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA), 0)  ),''),


COR_ID,
COALESCE( (SELECT NOME        FROM CAD_CORES       WHERE CAD_CORES.CODIGO=PEDIDOS_ITENS_GRADE.COR_ID),'***'),
TAMANHO_ID,
COALESCE( (SELECT TAMANHO   FROM CAD_TAMANHOS    WHERE CAD_TAMANHOS.CODIGO=PEDIDOS_ITENS_GRADE.TAMANHO_ID),'***'),
COALESCE(ORDEM_GRADE,''),
COALESCE(QUANTIDADE,0)


FROM PEDIDOS_ITENS_GRADE
WHERE 
TAMANHO_ID>0 AND COR_ID>0
AND
QUANTIDADE>0




GO
/****** Object:  View [dbo].[VIEW_NECESSIDADEPRODUCAOESTOQUE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[VIEW_NECESSIDADEPRODUCAOESTOQUE](
    EMPRESA,
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    COLECAO,
    COLECAO_NOME,
    COR_ID,
    COR,
    TAMANHO_ID,
    TAMANHO,
    ORDEM_GRADE,
    QUANTIDADE)
    
AS
SELECT
COALESCE( (SELECT EMPRESA   FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA), 1),
COALESCE(REFERENCIA,'***'),

IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(CAD_PRODUTOS_GRADES.REFERENCIA,
                                    CAD_PRODUTOS_GRADES.COR_ID,
                                    CAD_PRODUTOS_GRADES.TAMANHO_ID
                                    ),


COALESCE( (SELECT DESCRICAO   FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA), '***'),

COLECAO=COALESCE(        (SELECT COLECAO     FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA), 0),
COLECAO_NOME=COALESCE( (SELECT NOME        FROM CAD_COLECAO       WHERE CAD_COLECAO.CODIGO=COALESCE(        (SELECT COLECAO     FROM CAD_PRODUTOS    WHERE CAD_PRODUTOS.REFERENCIA=CAD_PRODUTOS_GRADES.REFERENCIA), 0)  ),''),


COR_ID,
COALESCE( (SELECT NOME        FROM CAD_CORES       WHERE CAD_CORES.CODIGO=CAD_PRODUTOS_GRADES.COR_ID),'***'),
TAMANHO_ID,
COALESCE( (SELECT TAMANHO   FROM CAD_TAMANHOS    WHERE CAD_TAMANHOS.CODIGO=CAD_PRODUTOS_GRADES.TAMANHO_ID),'***'),
COALESCE(ORDEM_GRADE,''),
COALESCE(QUANTIDADE,0)


FROM CAD_PRODUTOS_GRADES
WHERE 
TAMANHO_ID>0 
AND 
COR_ID>0





GO
/****** Object:  View [dbo].[VIEW_NOTAFISCAL]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[VIEW_NOTAFISCAL](
    EMPRESA,
    CODIGO,
    NOTAFISCAL,
    NOTAFISCALORIGEM,
    SERIE,
    EMISSAO,
    DATA_ES,
    HORA,
    OPERACAO,
    CLIENTE,
    CLIENTE_NOME,
    CLIENTE_CNPJ,
    CLIENTE_RG_IE,
    CLIENTE_ENDERECO,
    CLIENTE_NUMERO,
    CLIENTE_BAIRRO,
    CLIENTE_CEP,
    CLIENTE_DDD,
    CLIENTE_FONE,
    CLIENTE_FAX,
    CLIENTE_REFERENCIA,
    CLIENTE_CIDADE,
    CLIENTE_CIDADE_NOME,
    CLIENTE_UF,
    CLIENTE_CONTATO,
    CLIENTE_EMAIL,
    CFOP,
    CFOP_NOME,
    IE_SUBSTITUICAO,
    STATUS,
    FORMA_PAGTO,
    FORMA_PAGTO_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    NF_VALOR_TOTAL,
    NF_VALOR_PRODUTOS,
    NF_QTDE_PRODUTOS,
    NF_VALOR_ICMS,
    NF_VALOR_IPI,
    NF_ISS,
    NF_ISS_VALOR,
    NF_BASE_CALC_ICMS,
    NF_BASE_CALC_ICMS_II,
    NF_VALOR_BASE_ICMS_II,
    SIMPLESNACIONAL_VALOR,
    VLR_FRETE,
    VLR_SEGURO,
    VLR_DESP_ACES,
    PERC_DESCONTO,
    VLR_DESCONTO,
    VLR_RECEBIDO,
    TROCO,
    VLR_CAIXA,
    TRANSPORTADORA,
    TRANSP_NOME,
    TRANSP_FRETE,
    TRANSP_PLACA,
    TRANSP_PLACA_CIDADE,
    TRANSP_PLACA_UF,
    TRANSP_CNPJ,
    TRANSP_ENDERECO,
    TRANSP_CIDADE,
    TRANSP_CIDADE_NOME,
    TRANSP_UF,
    TRANSP_INSCRICAO,
    TRANSP_QTDE,
    TRANSP_ESPECIE,
    TRANSP_MARCA,
    TRANSP_NUMERO,
    TRANSP_PBRUTO,
    TRANSP_PLIQUIDO,
    DADOS_ADICIONAIS,
    RESERVADO_FISCO,
    ALIQ_ICMS_REDUCAO,
    VLR_ICMS_REDUCAO,
    TIPO_DESCONTO,
    DESCONTO_ACRESCIMO,
    PEDIDO,
    CUPOM,
    TABELA,
    IMPRESSO,
    DEVOLUCAOCREDITADA,
    TIPONF
    )
AS
select


case 
   when coalesce(VENDAS.EMPRESA,1)=0 then 1
   else
   coalesce(VENDAS.EMPRESA,1) 
end,

VENDAS.CODIGO,
VENDAS.NOTAFISCAL,
VENDAS.NOTAFISCALORIGEM,
VENDAS.SERIE,
VENDAS.EMISSAO,
VENDAS.DATA_ENTRADASAIDA,
VENDAS.HORA,
VENDAS.OPERACAO,
VENDAS.CLIENTE,
coalesce( (select   NOME            from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   CPF_CNPJ        from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   RG_IE           from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   ENDERECO        from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   NUMERO          from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***')  ,
coalesce( (select   BAIRRO          from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   CEP             from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '0'),
coalesce( (select   DDD_FONE        from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), 0),
coalesce( (select   FONE            from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   FAX             from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   REFERENCIA      from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   CODIGOCIDADE    from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), 0),
coalesce( (select   NOMECIDADE      from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   UF              from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   CONTATO         from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
coalesce( (select   EMAIL            from CAD_CLIENTES       where CODIGO=VENDAS.CLIENTE), '***'),

VENDAS.CFOP,
coalesce( (select   DESCRICAO       FROM CAD_CFOP     where  CODIGO=CFOP),    '***'),
VENDAS.IE_SUBSTITUTO_TRIBUTARIO,
VENDAS.STATUS,
VENDAS.FORMAPAGTO,
coalesce( (select   NOME            from CAD_FORMAPAGTO where  CODIGO=VENDAS.FORMAPAGTO), '***'),
VENDAS.VENDEDOR,
coalesce( (select   NOME             from CAD_CLIENTES where  CODIGO=VENDAS.VENDEDOR), '***'),
VENDAS.TOTAL_NF,
VENDAS.VALOR_PRODUTOS,
VENDAS.QTDE_PRODUTOS,
VENDAS.ICMS_VALOR,
VENDAS.IPI_VALOR,
VENDAS.ISS,
VENDAS.ISS_VALOR,
VENDAS.ISS_VALOR,
VENDAS.ICMS_BASECALCULO_SUBSTITUICAO,
VENDAS.ICMS_BASECALCULO_SUBSTITUICAO_VALOR,
VENDAS.SIMPLESNACIONAL_VALOR,
VENDAS.VLR_FRETE,
VENDAS.VLR_SEGURO,
VENDAS.VLR_DESPESAS_ASSESSORIAS,
VENDAS.DESCONTO,
VENDAS.VLR_DESCONTO,
VENDAS.VLR_RECEBIDO,
VENDAS.TROCO,
VENDAS.VLR_CAIXA,

    /* transportadora */
    
VENDAS.TRANSPORTADORA,
coalesce( (select   NOME               from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),
VENDAS.FRETE,

coalesce( (select   TRANSPORTADORA_PLACA      from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),
coalesce( (select   TRANSPORTADORA_CIDADE     from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),
coalesce( (select   TRANSPORTADORA_UF         from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),
coalesce( (select   CPF_CNPJ                  from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),
coalesce( (select   ENDERECO           from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),
coalesce( (select   CODIGOCIDADE       from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), 0),
coalesce( (select   NOMECIDADE         from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),
coalesce( (select   UF                 from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),
coalesce( (select   RG_IE                from CAD_CLIENTES where  CODIGO=VENDAS.TRANSPORTADORA ), '***'),

VENDAS.FRETE_QUANTIDADE,
VENDAS.FRETE_ESPECIE,
VENDAS.FRETE_MARCA,
VENDAS.FRETE_NUMERO,
VENDAS.FRETE_PBRUTO,
VENDAS.FRETE_PLIQUIDO,

VENDAS.OBS1,
VENDAS.OBS2,
VENDAS.ICMS_REDUCAO,
VENDAS.ICMS_REDUCAO_VALOR,
VENDAS.TIPO_DESCONTO,
VENDAS.DESCONTO_ACRESCIMO,
VENDAS.PEDIDO,
VENDAS.CUPOM,
VENDAS.TABELA,
VENDAS.IMPRESSO,
VENDAS.DEVOLUCAOCREDITADA,
coalesce(VENDAS.TIPONF,'NFE')


FROM VENDAS





GO
/****** Object:  View [dbo].[VIEW_NOTAFISCAL_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_NOTAFISCAL_ITENS](
    EMPRESA,
    CODIGO,
    NUMERO_NF,
    SERIE,
    OPERACAO,
    EMISSAO,
    CLIENTE,
    VENDEDOR,
    CFOP,
    PRODUTO,
    DESCRICAO,
    CLASS_FISCAL,
    SITUACAO_TRIBUTARIA,
    UNIDADE,
    QTDE,
    VLR_UNITARIO,
    VLR_TOTAL,
    IPI_ALIQUOTA,
    VLR_IPI,
    ICMS_ALIQUOTA,
    VLR_ICMS,
    DESCONTO,
    DESCONTO_VALOR)
AS
select



coalesce(VENDAS_ITENS.EMPRESA,1),
VENDAS_ITENS.CODIGO,
VENDAS_ITENS.NOTAFISCAL,
VENDAS_ITENS.SERIE,
VENDAS_ITENS.OPERACAO,
VENDAS_ITENS.EMISSAO,
VENDAS_ITENS.CLIENTE,
VENDAS_ITENS.VENDEDOR,
VENDAS_ITENS.CFOP,
--VENDAS_ITENS.PRODUTO,
coalesce( (select CAD_PRODUTOS.REFERENCIAREDUZIDA FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=VENDAS_ITENS.PRODUTO  ), (select CAD_PRODUTOS.REFERENCIA FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=VENDAS_ITENS.PRODUTO  )    ),

--VENDAS_ITENS.DESCRICAO,
coalesce( (select CAD_PRODUTOS.DESCRICAOREDUZIDA FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=VENDAS_ITENS.PRODUTO  ), (select CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=VENDAS_ITENS.PRODUTO  )    ),
VENDAS_ITENS.CLASSIFICACAO_FISCAL,
VENDAS_ITENS.SITUACAO_TRIBUTARIA,
VENDAS_ITENS.UND,
VENDAS_ITENS.QUANTIDADE,
VENDAS_ITENS.VLR_UNIT,
VENDAS_ITENS.VLR_TOTAL,
VENDAS_ITENS.IPI,
VENDAS_ITENS.VLR_IPI,
VENDAS_ITENS.ICMS,
VENDAS_ITENS.VLR_ICMS,
VENDAS_ITENS.DESCONTO,
VENDAS_ITENS.VLR_DESCONTO


FROM VENDAS_ITENS


GO
/****** Object:  View [dbo].[VIEW_NOTAFISCALDEVOLUCAO_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_NOTAFISCALDEVOLUCAO_ITENS](
    CODIGO,
    NUMERO_NF,
    SERIE,
    OPERACAO,
    EMISSAO,
    CLIENTE,
    VENDEDOR,
    CFOP,
    PRODUTO,
    DESCRICAO,
    CLASS_FISCAL,
    SITUACAO_TRIBUTARIA,
    UNIDADE,
    QTDE,
    VLR_UNITARIO,
    VLR_TOTAL,
    IPI_ALIQUOTA,
    VLR_IPI,
    ICMS_ALIQUOTA,
    VLR_ICMS,
    DESCONTO,
    DESCONTO_VALOR)
AS
select



VENDAS_DEVOLUCAO_ITENS.CODIGO,
VENDAS_DEVOLUCAO_ITENS.NOTAFISCAL,
VENDAS_DEVOLUCAO_ITENS.SERIE,
VENDAS_DEVOLUCAO_ITENS.OPERACAO,
VENDAS_DEVOLUCAO_ITENS.EMISSAO,
VENDAS_DEVOLUCAO_ITENS.CLIENTE,
VENDAS_DEVOLUCAO_ITENS.VENDEDOR,
VENDAS_DEVOLUCAO_ITENS.CFOP,
VENDAS_DEVOLUCAO_ITENS.PRODUTO,
VENDAS_DEVOLUCAO_ITENS.DESCRICAO,
VENDAS_DEVOLUCAO_ITENS.CLASSIFICACAO_FISCAL,
VENDAS_DEVOLUCAO_ITENS.SITUACAO_TRIBUTARIA,
VENDAS_DEVOLUCAO_ITENS.UND,
VENDAS_DEVOLUCAO_ITENS.QUANTIDADE,
VENDAS_DEVOLUCAO_ITENS.VLR_UNIT,
VENDAS_DEVOLUCAO_ITENS.VLR_TOTAL,
VENDAS_DEVOLUCAO_ITENS.IPI,
VENDAS_DEVOLUCAO_ITENS.VLR_IPI,
VENDAS_DEVOLUCAO_ITENS.ICMS,
VENDAS_DEVOLUCAO_ITENS.VLR_ICMS,
VENDAS_DEVOLUCAO_ITENS.DESCONTO,
VENDAS_DEVOLUCAO_ITENS.VLR_DESCONTO


FROM VENDAS_DEVOLUCAO_ITENS


GO
/****** Object:  View [dbo].[VIEW_ORDEMPRODUCAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[VIEW_ORDEMPRODUCAO](
  EMPRESA,
  CODIGO,
  LOTE,
  LOTE_NOME,
  APROVADO,
  DATA,
  DATAFECHAMENTO,
  ENCERRADO,
  NATUREZA,
  QTDE_TOTAL,
  QTDE_PRODUZIDA,
  QTDE_RESTANTE,
  QTDE_PERDAS,
  QTDE_DEFEITOS,
  TEMPOPRODUCAO,
  PERCENTUAL,
  OBSERVACAO,
  TERCEIRIZADOATUAL,
  FASEATUAL,
  CELULAATUAL,
  MAQUINAATUAL,
  OPERADORATUAL,
  PROCESSOATUAL,
  TURNOATUAL,
  DEFEITOATUAL,
  QUALIDADEATUAL,
  REFERENCIA,
  DESCRICAO,
  FOTO_PATH
  

  )

AS
SELECT
 COALESCE(EMPRESA,1),
 COALESCE(CODIGO,0),
 COALESCE(LOTE,0),
 COALESCE((SELECT NOME FROM CAD_LOTEPRODUCAO WHERE CAD_LOTEPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO.LOTE ),''),
 COALESCE(APROVADO,'N'),
 DATA,
 DATAFECHAMENTO,
 COALESCE(ENCERRADO,'N'),
 COALESCE(NATUREZA,''),
 COALESCE(QTDE_TOTAL,0),
 COALESCE(QTDE_PRODUZIDA,0),
 COALESCE(QTDE_RESTANTE,0),
 COALESCE(QTDE_PERDAS,0),
 COALESCE(QTDE_DEFEITOS,0),
 COALESCE(TEMPO_PRODUCAO,0),
 COALESCE(PERCENTUAL,0),
 COALESCE(OBSERVACAO,''),
 COALESCE(TERCEIRIZADOATUAL,0),
 COALESCE(FASEATUAL,0),
 COALESCE(CELULAATUAL,0),
 COALESCE(MAQUINAATUAL,0),
 COALESCE(OPERADORATUAL,0),
 COALESCE(PROCESSOATUAL,0),
 COALESCE(TURNOATUAL,0),
 COALESCE(DEFEITOATUAL,0),
 COALESCE(QUALIDADEATUAL,0),
 COALESCE( (SELECT TOP 1 REFERENCIA  FROM PCP_ORDEMPRODUCAO_ITENS WHERE CODIGO=PCP_ORDEMPRODUCAO.CODIGO ) ,''),
 COALESCE( (SELECT TOP 1 DESCRICAO   FROM PCP_ORDEMPRODUCAO_ITENS WHERE CODIGO=PCP_ORDEMPRODUCAO.CODIGO ) ,''),
 
 FOTO_PATH = ( SELECT FOTO_PATH FROM CAD_PRODUTOS_FOTOS WHERE CODIGO=(SELECT CODIGO FROM CAD_PRODUTOS WHERE REFERENCIA=(SELECT TOP 1 REFERENCIA  FROM PCP_ORDEMPRODUCAO_ITENS WHERE CODIGO=PCP_ORDEMPRODUCAO.CODIGO ) )  )


FROM PCP_ORDEMPRODUCAO





GO
/****** Object:  View [dbo].[VIEW_ORDEMPRODUCAO_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ORDEMPRODUCAO_GRADE](
EMPRESA,
CODIGO,
LOTE,
APROVADO,
REFERENCIA, 
IDENTIFICADOR,
DESCRICAO, 
UNIDADE,
COR_ID,
COR, 
TAMANHO_ID,
TAMANHO,
ORDEM_GRADE, 
QUANTIDADE

)
AS
SELECT     
 COALESCE(EMPRESA,1),
 COALESCE(CODIGO,0),
 COALESCE((SELECT TOP 1 LOTE FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.CODIGO=CODIGO),0),
 COALESCE(APROVADO,'N'),
 REFERENCIA, 
    IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(PCP_ORDEMPRODUCAO_ITENS_GRADE.REFERENCIA,
                                        PCP_ORDEMPRODUCAO_ITENS_GRADE.COR_ID,
                                        PCP_ORDEMPRODUCAO_ITENS_GRADE.TAMANHO_ID
                                        ),
 
 COALESCE((SELECT   TOP 1    DESCRICAO FROM         CAD_PRODUTOS WHERE /* EMPRESA=PCP_ORDEMPRODUCAO_ITENS_GRADE.EMPRESA  AND  */ REFERENCIA = PCP_ORDEMPRODUCAO_ITENS_GRADE.REFERENCIA), '***'), 
 COALESCE((SELECT   TOP 1    UNIDADE FROM           CAD_PRODUTOS WHERE /* EMPRESA=PCP_ORDEMPRODUCAO_ITENS_GRADE.EMPRESA  AND  */ REFERENCIA = PCP_ORDEMPRODUCAO_ITENS_GRADE.REFERENCIA), '***'), 
 COR_ID,
 COR, 
 TAMANHO_ID,
 TAMANHO, 
 ORDEM_GRADE, 
 SUM(QUANTIDADE) AS QUANTIDADE
           
           
FROM       PCP_ORDEMPRODUCAO_ITENS_GRADE

WHERE     
(COR_ID > 0)
AND
(TAMANHO_ID > 0)


GROUP BY 
 COALESCE(EMPRESA,1),
 COALESCE(CODIGO,0),
 COALESCE(APROVADO,'N'),
 REFERENCIA, 
 COR_ID,
 COR, 
 TAMANHO, 
 TAMANHO_ID,
 ORDEM_GRADE


GO
/****** Object:  View [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMA] (
      ORDEMPRODUCAO,
	  CODIGO,
      REFERENCIA,
      DESCRICAO,
      UND,
      COMPOSICAO_DESCRICAO,
      DIMENSIONAMENTO,
      COR,
      TAMANHO,
      QTDE,
      QTDE_CONSUMOSTOTAL,
      VLR_UNIT,
      VLR_CUSTOTOTAL,
      ESTOQUE,
      NECESSIDADE
    )
AS
SELECT 
      DISTINCT(PCP_ORDEMPRODUCAO_ITENS.CODIGO),
      PCP_MATERIAPRIMA.CODIGO,
      COALESCE(PCP_MATERIAPRIMA.REFERENCIA,''),
      COALESCE(PCP_MATERIAPRIMA.DESCRICAO,''),
      COALESCE(PCP_MATERIAPRIMA.UND,''),

      COALESCE(PCP_MATERIAPRIMA.COMPOSICAO_DESCRICAO,''),
      COALESCE(PCP_MATERIAPRIMA.DIMENSIONAMENTO,''),
      COALESCE(PCP_MATERIAPRIMA.COR,''),
      COALESCE(PCP_MATERIAPRIMA.TAMANHO,''),
      
      COALESCE(PCP_MATERIAPRIMA.QTDE,0),

      --COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0),
      CASE
         WHEN COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0) >0 THEN COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0)
         WHEN COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0) >0 THEN COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0)
         ELSE
          999
      END,
 

    -- COALESCE( (SELECT SUM(QUANTIDADE)  FROM PCP_MATERIAPRIMA_GRADE WHERE EMPRESA=PCP_MATERIAPRIMA.EMPRESA AND  CODIGO=PCP_MATERIAPRIMA.CODIGO AND   REFERENCIA=PCP_MATERIAPRIMA.REFERENCIA   ),0),

      COALESCE(PCP_MATERIAPRIMA.VLR_UNIT, 0),
      COALESCE(PCP_MATERIAPRIMA.VLR_UNIT *  COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0) ,0),


      COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA.REFERENCIA),0),
      
      CASE
         WHEN COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA.REFERENCIA),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0) >0 THEN 0
         WHEN COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA.REFERENCIA),0) - COALESCE(PCP_MATERIAPRIMA.QTDE,0)<0 THEN COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA.REFERENCIA),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0) 
         ELSE
          0
      END
      
     --COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA.REFERENCIA),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA.QTDE),0)  
      

FROM PCP_ORDEMPRODUCAO_ITENS 

INNER JOIN PCP_MATERIAPRIMA  ON    PCP_MATERIAPRIMA.CODIGO         = (SELECT CODIGO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_ORDEMPRODUCAO_ITENS.REFERENCIA)


GO
/****** Object:  View [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW  [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE] (
      ORDEMPRODUCAO,
	  CODIGO,
      REFERENCIA,
      DESCRICAO,
      COR_ID,
      COR,
      PADRAOCORID,
      PADRAOCORNOME,
      TAMANHO_ID,
      TAMANHO,
      TAMANHOPADRAO,
      ORDEM_GRADE,
      QTDE,
      QTDE_CONSUMOSTOTAL,
      ESTOQUE,
      NECESSIDADE
    )
AS

SELECT 
      DISTINCT
      ORDEMPRODUCAO=COALESCE(TBL_PRODUZIR.CODIGO,0),
      CODIGOPRODUTO=(SELECT CODIGO FROM CAD_PRODUTOS WHERE REFERENCIA=TBL_MATPRIMA.REFERENCIA),
      REFERENCIA=COALESCE(TBL_MATPRIMA.REFERENCIA,''),
      DESCRICAO=(SELECT     DESCRICAO FROM         CAD_PRODUTOS WHERE  REFERENCIA = TBL_MATPRIMA.REFERENCIA), 
      TP_CORID=COALESCE(TBL_PRODUZIR.COR_ID,0),
      TP_COR=COALESCE(TBL_PRODUZIR.COR,''),
      
      MAT1PADRAO_CORID=COALESCE(TBL_MATPRIMA.PADRAOCORID,0),
      MAT1PADRAO_COR=COALESCE(TBL_MATPRIMA.PADRAOCORNOME,''),

      MATTAMANHO_ID=COALESCE(TBL_MATPRIMA.TAMANHO_ID,0),
      TP_TAMANHO=COALESCE(TBL_PRODUZIR.TAMANHO,''),
      TAMANHOPADRAO=COALESCE(TBL_MATPRIMA.TAMANHOPADRAO,''),
      ORDEM_GRADE=COALESCE(TBL_PRODUZIR.ORDEM_GRADE,''),
      QTDEPRODUZIR=COALESCE(TBL_PRODUZIR.QUANTIDADE,0),
      QTDEPRODUZIR_X_QTDEFICHA= COALESCE( (TBL_PRODUZIR.QUANTIDADE * TBL_MATPRIMA.QUANTIDADE),0),

     ESTOQUE=COALESCE( (SELECT QUANTIDADE FROM CAD_PRODUTOS_GRADES WHERE CODIGO=TBL_PRODUZIR.CODIGO AND REFERENCIA=TBL_PRODUZIR.REFERENCIA AND COR_ID=TBL_PRODUZIR.COR_ID AND TAMANHO_ID=TBL_PRODUZIR.TAMANHO_ID   ),0),
     
     NECESSIDADE=COALESCE( (SELECT QUANTIDADE FROM CAD_PRODUTOS_GRADES WHERE CODIGO=TBL_PRODUZIR.CODIGO AND REFERENCIA=TBL_PRODUZIR.REFERENCIA AND COR_ID=TBL_PRODUZIR.COR_ID AND TAMANHO_ID=TBL_PRODUZIR.TAMANHO_ID   ),0) - COALESCE( (TBL_PRODUZIR.QUANTIDADE * TBL_MATPRIMA.QUANTIDADE),0)

      
FROM 
PCP_ORDEMPRODUCAO_ITENS_GRADE TBL_PRODUZIR 
INNER JOIN PCP_MATERIAPRIMA_GRADE  TBL_MATPRIMA 
ON
TBL_MATPRIMA.CODIGO = (SELECT CODIGO FROM CAD_PRODUTOS WHERE REFERENCIA=TBL_PRODUZIR.REFERENCIA)
AND TBL_MATPRIMA.COR_ID=TBL_PRODUZIR.COR_ID      
AND TBL_MATPRIMA.TAMANHO_ID=TBL_PRODUZIR.TAMANHO_ID      


GO
/****** Object:  View [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADEPCP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADEPCP] (
      EMPRESA,
      ORDEMPRODUCAO,
      REFERENCIA,
      DESCRICAO,
      COR_ID,
      COR,
      PADRAOCORID,
      PADRAOCORNOME,
      TAMANHO_ID,
      TAMANHO,
      TAMANHOPADRAO,
      ORDEM_GRADE,
      QTDE,
      QTDE_CONSUMOSTOTAL,
      ESTOQUE,
      NECESSIDADE
    )
AS

SELECT 
      DISTINCT
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.EMPRESA,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.CODIGO,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIA,''),
      (SELECT     DESCRICAO FROM         CAD_PRODUTOS WHERE  REFERENCIA = PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIA), 
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.COR_ID,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.COR,''),

      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.PADRAOCORID,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.PADRAOCORNOME,''),

      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.TAMANHO_ID,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.TAMANHO,''),
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.TAMANHOPADRAO,''),
      COALESCE(ORDEM_GRADE,''),
      
      COALESCE( (SELECT QTDE_CONSUMOSTOTAL FROM PCP_ORDEMPRODUCAO_MP WHERE EMPRESA=PCP_ORDEMPRODUCAO_MPGRADE.EMPRESA AND  CODIGO=PCP_ORDEMPRODUCAO_MPGRADE.CODIGO  AND REFERENCIA=PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIA   ),0),
      COALESCE(PCP_ORDEMPRODUCAO_MPGRADE.QUANTIDADE,0),



     COALESCE( (SELECT QUANTIDADE FROM CAD_PRODUTOS_GRADES WHERE CODIGO=PCP_ORDEMPRODUCAO_MPGRADE.CODIGO AND REFERENCIA=PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIA AND COR_ID=PCP_ORDEMPRODUCAO_MPGRADE.COR_ID AND TAMANHO_ID=PCP_ORDEMPRODUCAO_MPGRADE.TAMANHO_ID   ),0),    
      
      COALESCE( (SELECT NECESSIDADE FROM PCP_ORDEMPRODUCAO_MP WHERE EMPRESA=PCP_ORDEMPRODUCAO_MPGRADE.EMPRESA AND  CODIGO=PCP_ORDEMPRODUCAO_MPGRADE.CODIGO  AND REFERENCIA=PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIA   ),0)


FROM  PCP_ORDEMPRODUCAO_MPGRADE


GO
/****** Object:  View [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS] (
      ORDEMPRODUCAO,
	  CODIGO,
      REFERENCIA,
      DESCRICAO,
      UND,
      COMPOSICAO_DESCRICAO,
      DIMENSIONAMENTO,
      COR,
      TAMANHO,
      QTDE,
      QTDE_CONSUMOSTOTAL,
      VLR_UNIT,
      VLR_CUSTOTOTAL,
      ESTOQUE,
      NECESSIDADE
    )
AS
SELECT 
      DISTINCT(PCP_ORDEMPRODUCAO_ITENS.CODIGO),
      PCP_MATERIAPRIMA_TECIDOS.CODIGO,
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.REFERENCIA,''),
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.DESCRICAO,''),
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.UND,''),

      COALESCE(PCP_MATERIAPRIMA_TECIDOS.COMPOSICAO_DESCRICAO,''),
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.DIMENSIONAMENTO,''),
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.COR,''),
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.TAMANHO,''),
      
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.QTDE_METROS,0),
      COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOS.QTDE_METROS),0),
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.VLR_UNIT, 0),
      COALESCE(PCP_MATERIAPRIMA_TECIDOS.VLR_UNIT *  COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOS.QTDE_METROS),0) ,0),
      COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA_TECIDOS.REFERENCIA),0),
      
      
      CASE
         WHEN COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA_TECIDOS.REFERENCIA),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOS.QTDE_METROS),0) > 0 THEN 0
         WHEN COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA_TECIDOS.REFERENCIA),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOS.QTDE_METROS),0) < 0 THEN COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA_TECIDOS.REFERENCIA),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOS.QTDE_METROS),0) 
         ELSE
          0
      END
      
      
     --COALESCE( (SELECT ESTOQUESALDO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_MATERIAPRIMA_TECIDOS.REFERENCIA),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOS.QTDE_METROS),0) 
      
      

      
FROM PCP_ORDEMPRODUCAO_ITENS 
INNER JOIN PCP_MATERIAPRIMA_TECIDOS  ON    PCP_MATERIAPRIMA_TECIDOS.CODIGO         = (SELECT CODIGO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_ORDEMPRODUCAO_ITENS.REFERENCIA)
                                    
                                    
                                    
--WHERE
--PCP_ORDEMPRODUCAO_ITENS.APROVADO='N'


GO
/****** Object:  View [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOSGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOSGRADE] (
      ORDEMPRODUCAO,
	  CODIGO,
      REFERENCIA,
      DESCRICAO,
      REFERENCIA_COR_ID,
      REFERENCIA_COR_NOME,
      COR_ID,
      COR,
      TAMANHO_ID,
      TAMANHO,
      ORDEM_GRADE,
      QTDE,
      QTDE_CONSUMOSTOTAL,
      ESTOQUE,
      NECESSIDADE
      
    )
AS
SELECT 
      DISTINCT
      COALESCE(PCP_ORDEMPRODUCAO_ITENS.CODIGO,0),
      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.CODIGO,0),
      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA,''),
      (SELECT     DESCRICAO FROM         CAD_PRODUTOS WHERE  REFERENCIA = PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA), 
      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_COR_ID,0),
      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_COR_NOME,''),

      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.COR_ID,0),
      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.COR_NOME,''),


      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.TAMANHO_ID,0),
      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.TAMANHO,''),
      
      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.ORDEM_GRADE,''),
      

      COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.QUANTIDADE,0),
      COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOSGRADE.QUANTIDADE),0),
      
      COALESCE( (SELECT QUANTIDADE FROM CAD_PRODUTOS_GRADES WHERE CODIGO=PCP_MATERIAPRIMA_TECIDOSGRADE.CODIGO AND REFERENCIA=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA AND COR_ID=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_COR_ID AND TAMANHO_ID=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_TAMANHO_ID   ),0),
      
      
      
      --COALESCE( (SELECT NECESSIDADE FROM PCP_ORDEMPRODUCAO_MPTECIDOS WHERE EMPRESA=PCP_MATERIAPRIMA_TECIDOSGRADE.EMPRESA AND  CODIGO=PCP_MATERIAPRIMA_TECIDOSGRADE.CODIGO  AND REFERENCIA=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA   ),0)
       
      CASE
         WHEN COALESCE( (SELECT QUANTIDADE FROM CAD_PRODUTOS_GRADES WHERE CODIGO=PCP_MATERIAPRIMA_TECIDOSGRADE.CODIGO AND REFERENCIA=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA AND COR_ID=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_COR_ID AND TAMANHO_ID=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_TAMANHO_ID    ),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOSGRADE.QUANTIDADE),0) >0 THEN 0
         WHEN COALESCE( (SELECT QUANTIDADE FROM CAD_PRODUTOS_GRADES WHERE CODIGO=PCP_MATERIAPRIMA_TECIDOSGRADE.CODIGO AND REFERENCIA=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA AND COR_ID=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_COR_ID AND TAMANHO_ID=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_TAMANHO_ID    ),0)  - COALESCE(PCP_MATERIAPRIMA_TECIDOSGRADE.QUANTIDADE,0)<0 THEN COALESCE( (SELECT QUANTIDADE FROM CAD_PRODUTOS_GRADES WHERE CODIGO=PCP_MATERIAPRIMA_TECIDOSGRADE.CODIGO AND REFERENCIA=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA AND COR_ID=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_COR_ID AND TAMANHO_ID=PCP_MATERIAPRIMA_TECIDOSGRADE.REFERENCIA_TAMANHO_ID    ),0)  - COALESCE( (PCP_ORDEMPRODUCAO_ITENS.QUANTIDADE * PCP_MATERIAPRIMA_TECIDOSGRADE.QUANTIDADE),0) 
         ELSE
          0
      END
     
      
      
FROM PCP_MATERIAPRIMA_TECIDOSGRADE
INNER JOIN PCP_ORDEMPRODUCAO_ITENS   ON    
PCP_MATERIAPRIMA_TECIDOSGRADE.CODIGO = (SELECT CODIGO FROM CAD_PRODUTOS WHERE REFERENCIA=PCP_ORDEMPRODUCAO_ITENS.REFERENCIA)


GO
/****** Object:  View [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOSGRADEPCP]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW  [dbo].[VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOSGRADEPCP] (
      EMPRESA,
      ORDEMPRODUCAO,
      REFERENCIA,
      DESCRICAO,
      REFERENCIA_COR_ID,
      REFERENCIA_COR_NOME,
      COR_ID,
      COR,
      TAMANHO_ID,
      TAMANHO,
      ORDEM_GRADE,
      QTDE,
      QTDE_CONSUMOSTOTAL,
      ESTOQUE,
      NECESSIDADE     
    )
AS
SELECT 

      DISTINCT
      COALESCE( (SELECT EMPRESA FROM PCP_ORDEMPRODUCAO_MPTECIDOS WHERE EMPRESA=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.EMPRESA AND  CODIGO=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.CODIGO  AND REFERENCIA=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA   ),1),
      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.CODIGO,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA,''),
      (SELECT     DESCRICAO FROM         CAD_PRODUTOS WHERE  REFERENCIA = PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA), 
      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA_COR_ID,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA_COR_NOME,''),

      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.COR_ID,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.COR_NOME,''),


      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.TAMANHO_ID,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.TAMANHO,''),
      
      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.ORDEM_GRADE,''),
      

      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.QUANTIDADE,0),
      COALESCE(PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.QUANTIDADE,0),
      
      
      COALESCE( (SELECT QUANTIDADE FROM CAD_PRODUTOS_GRADES WHERE CODIGO=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.CODIGO AND REFERENCIA=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA AND COR_ID=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.COR_ID AND TAMANHO_ID=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.TAMANHO_ID   ),0),
      
      
      
      COALESCE( (SELECT NECESSIDADE FROM PCP_ORDEMPRODUCAO_MPTECIDOS WHERE EMPRESA=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.EMPRESA AND  CODIGO=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.CODIGO  AND REFERENCIA=PCP_ORDEMPRODUCAO_MPTECIDOSGRADE.REFERENCIA   ),0)
      
FROM PCP_ORDEMPRODUCAO_MPTECIDOSGRADE


GO
/****** Object:  View [dbo].[VIEW_ORDEMSERVICO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE VIEW [dbo].[VIEW_ORDEMSERVICO] (
    EMPRESA,
    CODIGO,
    DOCUMENTO,
    TITULO,
    DATA,
    DATA_FATURAMENTO,
    DATA_ENTREGA,
    TIPO,
    CLIENTE,
    CLIENTE_NOME,
    
    CNPJ,
    IE,
    
    
    ENDERECO,
    NUMERO,
    BAIRRO,
    CEP,
    NOMECIDADE,
    UF,
    DDD,
    FONE,
    FAX,
    CONTATO,
    EMAIL,
    
    
    VENDEDOR,
    VENDEDOR_NOME,
    TRANSPORTADORA,
    TRANSPORTADORA_NOME,
    FORMA_PAGTO,
    FORMA_PAGTO_NOME,
    TIPOPAGAMENTO,
    VLR_DESCONTO,
    QTDE_TOTAL,
    VLR_TOTAL,
    VLR_PRODUTOS,
    
    QTDE_SERVICOS,
    QTDE_TERCEIRIZADOS,
    
    VLR_SERVICOS,
    VLR_TERCEIRIZADOS,
  
    
    APROVADO,
    STATUS,
    IMPRESSO,
    RESPONSAVEL,
    PROBLEMARELATADO,
    PROBLEMASOLUCAO,
    OBSERVACAO
    
    
    )
AS
select

    coalesce(EMPRESA,1),
    CODIGO,
    DOCUMENTO,
    'PEDIDO: '+cast(CODIGO as varchar(15)) +' (CLIENTE: '+coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOS.CLIENTE), '***')+' - CNPJ: '+coalesce( (select CPF_CNPJ from CAD_CLIENTES where  CODIGO=PEDIDOS.CLIENTE), '***')+')',
    DATA                  ,
    DATA_FATURAMENTO      ,
    DATA_ENTREGA          ,
    TIPO                  ,
    CLIENTE               ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOS.CLIENTE ), '***'),
    
    coalesce( (select CPF_CNPJ from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select RG_IE from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select ENDERECO from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select NUMERO from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '0'),
    coalesce( (select BAIRRO from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select CEP from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '0'),
    coalesce( (select NOMECIDADE from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select UF from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select DDD_FONE from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), 0),
    coalesce( (select FONE from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select FAX from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select CONTATO from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select EMAIL from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),

    
    VENDEDOR              ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOS.VENDEDOR  ), '***'),
    transportadora         ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOS.TRANSPORTADORA    ), '***'),
    FORMAPAGTO           ,
   coalesce( (select   NOME            from CAD_FORMAPAGTO where  CODIGO=PEDIDOS.FORMAPAGTO), '***'),
   coalesce( (select   TIPO_PAGAMENTO            from CAD_FORMAPAGTO where  CODIGO=PEDIDOS.FORMAPAGTO), '***'),
    
    
    COALESCE( VLR_DESCONTO, 0),
    COALESCE( QTDE_TOTAL, 0),
    COALESCE( VLR_TOTAL, 0),
    COALESCE( VLR_PRODUTOS, 0),
    

    COALESCE( QTDE_SERVICOS, 0),
    COALESCE( QTDE_TERCEIRIZADOS, 0),
    
    COALESCE( VLR_SERVICOS, 0),
    COALESCE( VLR_TERCEIRIZADOS, 0),















    CASE APROVADO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end as  APROVADO,


    CASE STATUS
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       when 'C' then 'CANCELADO'
       else 'NAO'
    end as  STATUS,

    CASE IMPRESSO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end as  IMPRESSO,


    RESPONSAVEL,

    coalesce(PROBLEMARELATADO,''),
    coalesce(PROBLEMASOLUCAO,''),
    coalesce(OBSERVACAO,'')
    
    
    
    
from PEDIDOS




GO
/****** Object:  View [dbo].[VIEW_ORDEMSERVICO_PRODUTOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[VIEW_ORDEMSERVICO_PRODUTOS](
    EMPRESA,
    CODIGO,
    REFERENCIA,
    DESCRICAO,
    QUANTIDADE,
    VALOR_UNIT,
    DESCONTO,
    VLR_DESCONTO,
    VLR_TOTAL    
    )
AS
select

coalesce(EMPRESA,1),
CODIGO,
REFERENCIA,
coalesce( (select CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS.REFERENCIA  ) ,''   ),

coalesce(QTDE,0),
coalesce(VLR_UNIT,0),
coalesce(DESCONTO,0),
coalesce(VLR_DESCONTO,0),
coalesce(VLR_TOTAL,0)


from PEDIDOS_ITENS
WHERE 
QTDE>0






GO
/****** Object:  View [dbo].[VIEW_ORDEMSERVICO_SERVICOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VIEW_ORDEMSERVICO_SERVICOS](
    EMPRESA,
    CODIGO,
    SERVICO,
    DESCRICAO,
    QUANTIDADE,
    VALOR_UNIT,
    DESCONTO,
    VLR_DESCONTO,
    VLR_TOTAL,
    PROFISSIONAL,
    PROFISSIONAL_NOME    
    )
AS
select

coalesce(EMPRESA,1),
CODIGO,
SERVICO,
coalesce( (select TPRECOSERVICO.NOME FROM TPRECOSERVICO WHERE TPRECOSERVICO.CODIGO=PEDIDOS_SERVICOS.SERVICO  ) ,''   ),

coalesce(QTDE,0),
coalesce(VLR_UNIT,0),
coalesce(DESCONTO,0),
coalesce(VLR_DESCONTO,0),
coalesce(VLR_TOTAL,0),

coalesce(PROFISSIONAL,0),
coalesce( (select CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PEDIDOS_SERVICOS.PROFISSIONAL  ) ,'***'   )


from PEDIDOS_SERVICOS
WHERE 
QTDE>0






GO
/****** Object:  View [dbo].[VIEW_ORDEMSERVICO_TERCEIROS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_ORDEMSERVICO_TERCEIROS](
    EMPRESA,
    CODIGO,
    SERVICO,
    DESCRICAO,
    QUANTIDADE,
    VALOR_UNIT,
    DESCONTO,
    VLR_DESCONTO,
    VLR_TOTAL,
    TERCEIRIZADO,
    TERCEIRIZADO_NOME    
    )
AS
select

coalesce(EMPRESA,1),
CODIGO,
SERVICO,
coalesce( (select TPRECOSERVICO.NOME FROM TPRECOSERVICO WHERE TPRECOSERVICO.CODIGO=PEDIDOS_TERCEIROS.SERVICO  ) ,''   ),

coalesce(QTDE,0),
coalesce(VLR_UNIT,0),
coalesce(DESCONTO,0),
coalesce(VLR_DESCONTO,0),
coalesce(VLR_TOTAL,0),

coalesce(TERCEIRIZADO,0),
coalesce( (select CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PEDIDOS_TERCEIROS.TERCEIRIZADO  ) ,'***'   )


from PEDIDOS_TERCEIROS
WHERE 
QTDE>0






GO
/****** Object:  View [dbo].[VIEW_PCPANDAMENTOFASES]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  VIEW [dbo].[VIEW_PCPANDAMENTOFASES]  (
 
EMPRESA,
ORDEMPRODUCAO,
LOTE,
LOTE_NOME,
DATAOP,
DATAPREVISAO,
DATAOPFECHAMENTO,
DATAINICIOFASE,
DATARETORNOFASE,
TERCEIRIZADO,
TERCEIRIZADO_NOME,
FASE,
FASEORDEM,
FASE_NOME,
REFERENCIA,
DESCRICAO,
QTDE_PRODUZIR,
QTDE_TRANSFERIDA,
QTDE_PENDENTE,
QTDE_DEFEITO,
QTDE_PERDA
    )
AS


SELECT
 
 DISTINCT
 

EMPRESA,
ORDEMPRODUCAO,
LOTE,
COALESCE((SELECT NOME FROM CAD_LOTEPRODUCAO WHERE CAD_LOTEPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_LOCALIZACAO.LOTE),''),
DATAOP,
DATAPREVISAO,
DATAOPFECHAMENTO,
DATAINICIOFASE,
DATARETORNOFASE,
TERCEIRIZADO,
COALESCE((SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PCP_ORDEMPRODUCAO_LOCALIZACAO.TERCEIRIZADO  ),'[INTERNO]'),
FASE,
(SELECT TOP 1 CAD_FASESGRADE_LISTA.ORDEM FROM CAD_FASESGRADE_LISTA  WHERE CAD_FASESGRADE_LISTA.FASE=PCP_ORDEMPRODUCAO_LOCALIZACAO.FASE  ),
(SELECT CAD_FASES.NOME FROM CAD_FASES  WHERE CAD_FASES.CODIGO=PCP_ORDEMPRODUCAO_LOCALIZACAO.FASE  ),
REFERENCIA,
 COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE   CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_LOCALIZACAO.REFERENCIA), '***'),
QTDE_PRODUZIR=SUM(    QTDE_PRODUZIR),       
QTDE_TRANSFERIDA=SUM(    QTDE_TRANSFERIDA), 
QTDE_PENDENTE=SUM(    QTDE_PENDENTE),       
QTDE_DEFEITO=SUM(    QTDE_DEFEITO),         
QTDE_PERDA=SUM(    QTDE_PERDA)              
 
  
FROM PCP_ORDEMPRODUCAO_LOCALIZACAO 

 WHERE    QTDE_PRODUZIR>0

 
 GROUP BY            
EMPRESA,
ORDEMPRODUCAO,
LOTE,
DATAOP,
DATAPREVISAO,
DATAOPFECHAMENTO,
DATAINICIOFASE,
DATARETORNOFASE,
TERCEIRIZADO,
FASE,
REFERENCIA





GO
/****** Object:  View [dbo].[VIEW_PCPFASESHISTORICOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  VIEW [dbo].[VIEW_PCPFASESHISTORICOS]  (
 
EMPRESA,
ORDEMPRODUCAO,
LOTE,
LOTE_NOME,
DATAOP,
DATAPREVISAO,
DATAOPFECHAMENTO,
DATAINICIOFASE,
DATARETORNOFASE,
TERCEIRIZADO,
TERCEIRIZADO_NOME,
FASE,
FASEORDEM,
FASE_NOME,
REFERENCIA,
DESCRICAO,
QTDE_PRODUZIR
    )
AS


SELECT
 
 DISTINCT
 

EMPRESA,
ORDEMPRODUCAO,
LOTE,
COALESCE((SELECT NOME FROM CAD_LOTEPRODUCAO WHERE CAD_LOTEPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_LOCALIZACAO.LOTE),''),
DATAOP,
DATAPREVISAO,
DATAOPFECHAMENTO,
DATAINICIOFASE,
DATARETORNOFASE,
TERCEIRIZADO,
COALESCE((SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PCP_ORDEMPRODUCAO_LOCALIZACAO.TERCEIRIZADO  ),'[INTERNO]'),
FASE,
(SELECT TOP 1 CAD_FASESGRADE_LISTA.ORDEM FROM CAD_FASESGRADE_LISTA  WHERE CAD_FASESGRADE_LISTA.FASE=PCP_ORDEMPRODUCAO_LOCALIZACAO.FASE  ),
(SELECT CAD_FASES.NOME FROM CAD_FASES  WHERE CAD_FASES.CODIGO=PCP_ORDEMPRODUCAO_LOCALIZACAO.FASE  ),
REFERENCIA,
 COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE   CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_LOCALIZACAO.REFERENCIA), '***'),
QTDE_PRODUZIR=SUM(    QTDE_PRODUZIR)
 
  
FROM PCP_ORDEMPRODUCAO_LOCALIZACAO 

 WHERE    QTDE_PRODUZIR>0

 
 GROUP BY            
EMPRESA,
ORDEMPRODUCAO,
LOTE,
DATAOP,
DATAPREVISAO,
DATAOPFECHAMENTO,
DATAINICIOFASE,
DATARETORNOFASE,
TERCEIRIZADO,
FASE,
REFERENCIA





GO
/****** Object:  View [dbo].[VIEW_PCPFASESLOCALIZACAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  VIEW [dbo].[VIEW_PCPFASESLOCALIZACAO]  (
 EMPRESA,
 ORDEMPRODUCAO,
 LOTE,
 LOTE_NOME,
 
 DATAOP,
 DATAPREVISAO,
 DATAINICIOFASE,
 DATARETORNOFASE,
 
 TERCEIRIZADO,
 TERCEIRIZADO_NOME,
 FASE,
 FASE_NOME,
 REFERENCIA,
 DESCRICAO,
 
 QTDE_PRODUZIR,
 QTDE_TRANSFERIDA,
 QTDE_PENDENTE,
 QTDE_DEFEITO,
 QTDE_PERDA

)
AS
select

 (SELECT EMPRESA		FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=TBLMASTER.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=TBLMASTER.CODIGO  ),
 (SELECT CODIGO			FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=TBLMASTER.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=TBLMASTER.CODIGO  ),
 (SELECT LOTE			FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=TBLMASTER.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=TBLMASTER.CODIGO  ),
 COALESCE((SELECT NOME	FROM CAD_LOTEPRODUCAO WHERE CAD_LOTEPRODUCAO.CODIGO=(SELECT LOTE    FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=TBLMASTER.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=TBLMASTER.CODIGO  ) ),''),

 (SELECT  DATA				FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=TBLMASTER.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=TBLMASTER.CODIGO  ),
 (SELECT  DATAPREVISAO		FROM PCP_ORDEMPRODUCAO WHERE PCP_ORDEMPRODUCAO.EMPRESA=TBLMASTER.EMPRESA AND PCP_ORDEMPRODUCAO.CODIGO=TBLMASTER.CODIGO  ),
 (SELECT  DATA				FROM PCP_FASETRANSFERENCIA WHERE CODIGO=TBLMASTER.FASETRANSFERENCIA ),
 (SELECT  DATARETORNO		FROM PCP_FASETRANSFERENCIA WHERE CODIGO=TBLMASTER.FASETRANSFERENCIA ),
 
  coalesce(TBLMASTER.TERCEIRIZADO,0),
 TERCEIRIZADOORIGEM_NOME=coalesce((SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=TBLMASTER.TERCEIRIZADO  ),'[INTERNO]'),
 coalesce(TBLMASTER.FASE,0),
 FASE_NOME=(SELECT CAD_FASES.NOME FROM CAD_FASES  WHERE CAD_FASES.CODIGO=TBLMASTER.FASE  ),
 
 UPPER( COALESCE(TBLMASTER.REFERENCIA,'***')),
 COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE   CAD_PRODUTOS.REFERENCIA=TBLMASTER.REFERENCIA), '***'),
 coalesce(TBLMASTER.QTDE_PRODUZIR,0),
 coalesce(TBLMASTER.QTDE_TRANSFERIDA,0),
 coalesce(TBLMASTER.QTDE_PENDENTE,0),
 coalesce(TBLMASTER.QTDE_DEFEITO,0),
 coalesce(TBLMASTER.QTDE_PERDA,0)
 
FROM PCP_ORDEMPRODUCAO_ANDAMENTO TBLMASTER

WHERE
TBLMASTER.QTDE_PRODUZIR >0



GO
/****** Object:  View [dbo].[VIEW_PCPFASETRANSFERENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_PCPFASETRANSFERENCIA] (
 EMPRESA,
 CODIGO,
 ORDEMPRODUCAO,
 DATA,
 DATARETORNO,
 TERCEIRIZADO,
 TERCEIRIZADO_NOME,
 FASE,
 FASE_NOME,
 TERCEIRIZADOORIGEM,
 TERCEIRIZADOORIGEM_NOME,
 DATARETORNOORIGEM,
 FASEORIGEM,
 FASEORIGEM_NOME,
 QTDE_ENVIADA,
 QTDE_RETORNADA,
 QTDE_RESTANTE,
 CONCLUIDO,
 QTDE_PERDAS,
 QTDE_DEFEITOS,
 VLR_UNITARIO,
 VLR_TOTAL,
 OBSERVACAO,
 ENCERRADO,
 GEROUPAGAMENTO
    )
AS
select
 coalesce(EMPRESA,1),
 coalesce(CODIGO,0),
 coalesce(ORDEMPRODUCAO,0),
 coalesce(DATA,GETDATE()),
 DATARETORNO,
 coalesce(TERCEIRIZADO,0),
 TERCEIRIZADOORIGEM_NOME=(SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADO  ),
 coalesce(FASE,0),
 FASE_NOME=(SELECT CAD_FASES.NOME FROM CAD_FASES  WHERE CAD_FASES.CODIGO=PCP_FASETRANSFERENCIA.FASE  ),
 coalesce(TERCEIRIZADOORIGEM,0),
 TERCEIRIZADOORIGEM_NOME=(SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PCP_FASETRANSFERENCIA.TERCEIRIZADOORIGEM  ),
 DATARETORNOORIGEM,
 coalesce(FASEORIGEM,0),
 FASEORIGEM_NOME=(SELECT CAD_FASES.NOME FROM CAD_FASES  WHERE CAD_FASES.CODIGO=PCP_FASETRANSFERENCIA.FASEORIGEM  ),
 coalesce(QTDE_ENVIADA,0),
 coalesce(QTDE_RETORNADA,0),
 QTDE_RESTANTE=coalesce(QTDE_ENVIADA,0) - coalesce(QTDE_RETORNADA,0),
 CONCLUIDO=0,
 coalesce(QTDE_PERDAS,0),
 coalesce(QTDE_DEFEITOS,0),
 coalesce(VLR_UNITARIO,0),
 --VLR_TOTAL=coalesce(VLR_UNITARIO,0) * coalesce(QTDE_RETORNADA,QTDE_ENVIADA,0),
 VLR_TOTAL=coalesce(VLR_UNITARIO,0) * coalesce(QTDE_ENVIADA,0),
 
 coalesce(OBSERVACAO,''),
 coalesce(ENCERRADO,'N'),
 coalesce(GEROUPAGAMENTO,'N')


FROM PCP_FASETRANSFERENCIA


GO
/****** Object:  View [dbo].[VIEW_PEDIDOCONFERENCIA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE VIEW [dbo].[VIEW_PEDIDOCONFERENCIA] (
    CODIGO,
    PEDIDO,
    TITULO,
    DATA,
    DATAFATURAMENTO,
    NOTAFISCAL,
    CLIENTE,
    CLIENTE_NOME,
    CNPJ,
    IE,
    ENDERECO,
    NUMERO,
    BAIRRO,
    CEP,
    NOMECIDADE,
    UF,
    DDD,
    FONE,
    FAX,
    CONTATO,
    EMAIL,
    VENDEDOR,
    VENDEDOR_NOME,
    TRANSPORTADORA,
    TRANSPORTADORA_NOME,
    FORMA_PAGTO,
    FORMA_PAGTO_NOME,
    TIPOPAGAMENTO,
    QTDE_TOTAL,
    VLR_TOTAL,
    FATURADO,
    FRETE_VOLUMES,
    FRETE_ESPECIE,
    FRETE_MARCA,
    OBSERVACAO,
    ENTREGAPARCIAL,
    VALORPARCIAL
    
    )
AS
select


    CODIGO,
    PEDIDO,
    'PEDIDO: '+cast(CODIGO as varchar(15)) +' (CLIENTE: '+coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***')+' - CNPJ: '+coalesce( (select CPF_CNPJ from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***')+')',
    DATA                  ,
     (select TOP 1 VENDAS.EMISSAO from VENDAS where  VENDAS.CONFERENCIA=PEDIDOCONFERENCIA.CODIGO ),
     coalesce( (select TOP 1 VENDAS.NOTAFISCAL from VENDAS where  VENDAS.CONFERENCIA=PEDIDOCONFERENCIA.CODIGO ),0),


    CLIENTE               ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.CLIENTE ), '***'),
    
    coalesce( (select CPF_CNPJ from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select RG_IE from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select ENDERECO from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select NUMERO from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '0'),
    coalesce( (select BAIRRO from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select CEP from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '0'),
    coalesce( (select NOMECIDADE from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select UF from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select DDD_FONE from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), 0),
    coalesce( (select FONE from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select FAX from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select CONTATO from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
    coalesce( (select EMAIL from CAD_CLIENTES        where CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),

    
    VENDEDOR              ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR  ), '***'),
    transportadora         ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.TRANSPORTADORA  ), '***'),
    FORMAPAGTO           ,
   coalesce( (select   NOME            from CAD_FORMAPAGTO where  CODIGO=PEDIDOCONFERENCIA.FORMAPAGTO), '***'),
   coalesce( (select   TIPO_PAGAMENTO            from CAD_FORMAPAGTO where  CODIGO=PEDIDOCONFERENCIA.FORMAPAGTO), '***'),
    
    
    COALESCE( QTDE_TOTAL, 0),
    COALESCE( VLR_TOTAL, 0),

    CASE FATURADO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       when 'Q' then 'QUITADO'
       when 'C' then 'CANCELADO'
       else
       'NAO'
    end as  FATURADO,

    FRETE_VOLUMES,
    FRETE_ESPECIE,
    FRETE_MARCA,
    OBSERVACAO,
    
    coalesce( (select top 1 ENTREGAPARCIAL            from pedidos        where pedidos.CODIGO=PEDIDOCONFERENCIA.pedido), 'N'),
    coalesce( (select top 1 ENTREGAPARCIALPERCENTUAL  from pedidos        where pedidos.CODIGO=PEDIDOCONFERENCIA.pedido), 0)
    


    
FROM PEDIDOCONFERENCIA





GO
/****** Object:  View [dbo].[VIEW_PEDIDOCONFERENCIAGRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_PEDIDOCONFERENCIAGRADE] (
    CODIGO,
    PEDIDO,
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    COR,
    TAMANHO,
    ORDEM_GRADE,
    VALOR_UNIT,
    QUANTIDADE)
AS
select

CODIGO,
PEDIDO,
REFERENCIA,

IDENTIFICADOR=dbo.FNC_IDENTIFICADOR(REFERENCIA,
                                    COR_ID,
                                    TAMANHO_ID
                                    ),
    


DESCRICAO=coalesce( (select CAD_PRODUTOS.DESCRICAOREDUZIDA FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOCONFERENCIA_ITENS.REFERENCIA  ), (select CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOCONFERENCIA_ITENS.REFERENCIA  )    ),

COR,
TAMANHO,
ORDEM_GRADE,
--coalesce( (select VLR_UNIT from PEDIDOS_ITENS where PEDIDOS_ITENS.CODIGO=PEDIDOCONFERENCIA_ITENS.PEDIDO and PEDIDOS_ITENS.REFERENCIA=PEDIDOCONFERENCIA_ITENS.REFERENCIA), 0),
coalesce( (select SUM(PEDIDOS_ITENS.VLR_UNIT  - ( VLR_UNIT * (DESCONTO / 100)) ) from PEDIDOS_ITENS where PEDIDOS_ITENS.CODIGO=PEDIDOCONFERENCIA_ITENS.PEDIDO and PEDIDOS_ITENS.REFERENCIA=PEDIDOCONFERENCIA_ITENS.REFERENCIA), 0),
QUANTIDADE

from PEDIDOCONFERENCIA_ITENS
WHERE TAMANHO<>''


GO
/****** Object:  View [dbo].[VIEW_PEDIDOS_VENDIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_PEDIDOS_VENDIDOS](
    EMPRESA,
    CODIGO,
    DATA,
    DATAENTREGA,
    APROVADO,
    STATUS,
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    COR,
    ORDEM_GRADE,
    TAMANHO,
    VALOR_UNIT,
    QUANTIDADE,
    VLR_TOTAL,
    QTDE_ESTOQUE
        
    )
AS
SELECT
DISTINCT
COALESCE( PEDIDOS_ITENS_GRADE.EMPRESA,1),
PEDIDOS_ITENS_GRADE.CODIGO,
--PEDIDOS_ITENS.DATA,
(SELECT PEDIDOS.DATA            FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),
(SELECT PEDIDOS.DATA_ENTREGA    FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),
(SELECT PEDIDOS.APROVADO        FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),
(SELECT PEDIDOS.STATUS          FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),

PEDIDOS_ITENS.CLIENTE,
COALESCE( (SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PEDIDOS_ITENS.CLIENTE ),'***'),

PEDIDOS_ITENS.VENDEDOR,
COALESCE( (SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PEDIDOS_ITENS.VENDEDOR ),'***'),

PEDIDOS_ITENS_GRADE.REFERENCIA,

IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( PEDIDOS_ITENS_GRADE.REFERENCIA,
                                     PEDIDOS_ITENS_GRADE.COR_ID,
                                     PEDIDOS_ITENS_GRADE.TAMANHO_ID
                                     ),

COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA), '***'),
PEDIDOS_ITENS_GRADE.COR,
PEDIDOS_ITENS_GRADE.ORDEM_GRADE,
PEDIDOS_ITENS_GRADE.TAMANHO,
SUM(PEDIDOS_ITENS.VLR_UNIT),
SUM(COALESCE(PEDIDOS_ITENS_GRADE.QUANTIDADE,0)),
SUM(COALESCE(PEDIDOS_ITENS.VLR_UNIT,0) * COALESCE(PEDIDOS_ITENS_GRADE.QUANTIDADE,0) ),
COALESCE( (SELECT  ESTOQUESALDO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA), 0)



FROM PEDIDOS_ITENS_GRADE
INNER JOIN PEDIDOS_ITENS ON PEDIDOS_ITENS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA
  AND
PEDIDOS_ITENS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO
  AND
PEDIDOS_ITENS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA

WHERE
TAMANHO_ID<>0 
AND
QUANTIDADE<>0
GROUP BY

PEDIDOS_ITENS_GRADE.EMPRESA,
PEDIDOS_ITENS_GRADE.CODIGO,
PEDIDOS_ITENS.CLIENTE,
PEDIDOS_ITENS.VENDEDOR,
PEDIDOS_ITENS_GRADE.REFERENCIA,
PEDIDOS_ITENS_GRADE.COR,
PEDIDOS_ITENS_GRADE.COR_ID,
PEDIDOS_ITENS_GRADE.ORDEM_GRADE,
PEDIDOS_ITENS_GRADE.TAMANHO,
PEDIDOS_ITENS_GRADE.TAMANHO_ID,
PEDIDOS_ITENS_GRADE.VALOR_UNIT


GO
/****** Object:  View [dbo].[VIEW_PEDIDOS_VENDIDOS_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_PEDIDOS_VENDIDOS_GRADE](
    EMPRESA,
    CODIGO,
    DATA,
    DATAENTREGA,
    APROVADO,
    STATUS,    
    CLIENTE,
    CLIENTE_NOME,
    VENDEDOR,
    VENDEDOR_NOME,
    REFERENCIA,
    IDENTIFICADOR,
    DESCRICAO,
    COR,
    ORDEM_GRADE,
    TAMANHO,
    VALOR_UNIT,
    QUANTIDADE,
    VLR_TOTAL,
    QTDE_ESTOQUE
        
    )
AS
SELECT

DISTINCT
COALESCE( PEDIDOS_ITENS_GRADE.EMPRESA,1),
PEDIDOS_ITENS_GRADE.CODIGO,
(SELECT PEDIDOS.DATA                   FROM PEDIDOS          WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),
(SELECT PEDIDOS.DATA_ENTREGA           FROM PEDIDOS          WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),
(SELECT PEDIDOS.APROVADO        FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),
(SELECT PEDIDOS.STATUS          FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),


(SELECT PEDIDOS.CLIENTE                FROM PEDIDOS          WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),
COALESCE( (SELECT CAD_CLIENTES.NOME    FROM CAD_CLIENTES     WHERE CAD_CLIENTES.CODIGO=(SELECT PEDIDOS.CLIENTE            FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ) ),'***'),
(SELECT PEDIDOS.VENDEDOR               FROM PEDIDOS          WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ),
COALESCE( (SELECT CAD_CLIENTES.NOME    FROM CAD_CLIENTES     WHERE CAD_CLIENTES.CODIGO=(SELECT PEDIDOS.VENDEDOR            FROM PEDIDOS WHERE PEDIDOS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA AND PEDIDOS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO ) ),'***'),
PEDIDOS_ITENS_GRADE.REFERENCIA,

IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( PEDIDOS_ITENS_GRADE.REFERENCIA,
                                     PEDIDOS_ITENS_GRADE.COR_ID,
                                     PEDIDOS_ITENS_GRADE.TAMANHO_ID
                                     ),


COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA), '***'),
PEDIDOS_ITENS_GRADE.COR,
PEDIDOS_ITENS_GRADE.ORDEM_GRADE,
PEDIDOS_ITENS_GRADE.TAMANHO,
SUM(PEDIDOS_ITENS.VLR_UNIT),
SUM(COALESCE(PEDIDOS_ITENS_GRADE.QUANTIDADE,0)),
SUM(COALESCE(PEDIDOS_ITENS.VLR_UNIT,0) * COALESCE(PEDIDOS_ITENS_GRADE.QUANTIDADE,0) ),
COALESCE( (SELECT  SUM(QUANTIDADE) FROM CAD_PRODUTOS_GRADES WHERE 
                                                             CAD_PRODUTOS_GRADES.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA
                                                             AND
                                                             CAD_PRODUTOS_GRADES.COR_ID=PEDIDOS_ITENS_GRADE.COR_ID
                                                             AND
                                                             CAD_PRODUTOS_GRADES.TAMANHO_ID=PEDIDOS_ITENS_GRADE.TAMANHO_ID
                                                             ), 0)



FROM PEDIDOS_ITENS_GRADE
INNER JOIN PEDIDOS_ITENS ON PEDIDOS_ITENS.EMPRESA=PEDIDOS_ITENS_GRADE.EMPRESA
  AND
PEDIDOS_ITENS.CODIGO=PEDIDOS_ITENS_GRADE.CODIGO
  AND
PEDIDOS_ITENS.REFERENCIA=PEDIDOS_ITENS_GRADE.REFERENCIA

WHERE
TAMANHO_ID<>0 
AND
QUANTIDADE<>0
GROUP BY

PEDIDOS_ITENS_GRADE.EMPRESA,
PEDIDOS_ITENS_GRADE.CODIGO,
PEDIDOS_ITENS_GRADE.REFERENCIA,
PEDIDOS_ITENS_GRADE.COR_ID,
PEDIDOS_ITENS_GRADE.TAMANHO_ID,
PEDIDOS_ITENS_GRADE.COR,
PEDIDOS_ITENS_GRADE.TAMANHO,
PEDIDOS_ITENS_GRADE.ORDEM_GRADE,
PEDIDOS_ITENS_GRADE.VALOR_UNIT


GO
/****** Object:  View [dbo].[VIEW_PEDIDOSCOMISSAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_PEDIDOSCOMISSAO](
    EMPRESA,
    CODIGO,
    DOCUMENTO,
    DATA,
    DATAFATURAMENTO,
    CLIENTE,
    CLIENTE_NOME,
    CPF_CNPJ,
    FORMA_PAGTO,
    VENDEDOR,
    VENDEDORNOME,
    VENDEDORSALARIO,
    VALORTOTAL,
    COMISSAOCADASTRO,
    COMISSAOPEDIDO,
    COMISSAO_VALORVIACADASTRO,
    COMISSAO_VALORVIAPEDIDO,
    COMISSAO_COM_SALARIO,
    APROVADO,
    STATUS
  
    )
AS
select

1,  --coalesce( EMPRESA,1),
coalesce( PEDIDO,0),
coalesce((SELECT DOCUMENTO FROM PEDIDOS WHERE PEDIDOS.CODIGO=PEDIDOCONFERENCIA.PEDIDO),''),
--DATA,
(SELECT DATA FROM PEDIDOS WHERE PEDIDOS.CODIGO=PEDIDOCONFERENCIA.PEDIDO),

--(select TOP 1 EMISSAO from VENDAS where  PEDIDO=PEDIDOCONFERENCIA.PEDIDO),
(select TOP 1 EMISSAO from VENDAS where CONFERENCIA=PEDIDOCONFERENCIA.CODIGO),

coalesce( CLIENTE,0),
coalesce( (select NOME      from CAD_CLIENTES    where  CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
coalesce( (select CPF_CNPJ  from CAD_CLIENTES    where  CODIGO=PEDIDOCONFERENCIA.CLIENTE), '***'),
coalesce( (select NOME      from CAD_FORMAPAGTO  where CODIGO=PEDIDOCONFERENCIA.FORMAPAGTO), '0'),
coalesce( VENDEDOR,0),
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR), '***'),
coalesce( (select SALARIO from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR), 0 ),

coalesce( VLR_TOTAL,0),
coalesce( (select COMISSAO from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR), 0 ),

coalesce((SELECT COMISSAO FROM PEDIDOS WHERE PEDIDOS.CODIGO=PEDIDOCONFERENCIA.PEDIDO),0),


coalesce( (coalesce(VLR_TOTAL,0) * (select COMISSAO from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR) /100), 0),

    CASE  
       when coalesce((SELECT COMISSAO FROM PEDIDOS WHERE PEDIDOS.CODIGO=PEDIDOCONFERENCIA.PEDIDO),0) >  0  then coalesce( (coalesce(VLR_TOTAL,0) * coalesce((SELECT COMISSAO FROM PEDIDOS WHERE PEDIDOS.CODIGO=PEDIDOCONFERENCIA.PEDIDO),0) /100),0)
       when coalesce((SELECT COMISSAO FROM PEDIDOS WHERE PEDIDOS.CODIGO=PEDIDOCONFERENCIA.PEDIDO),0) <= 0  then coalesce( (coalesce(VLR_TOTAL,0) * (select COMISSAO from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR) /100), 0)
       when coalesce((SELECT COMISSAO FROM PEDIDOS WHERE PEDIDOS.CODIGO=PEDIDOCONFERENCIA.PEDIDO),0) <= 0  then coalesce( (coalesce(VLR_TOTAL,0) * (select COMISSAO from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR) /100), 0) - 58
    end,


SALARIO=coalesce( ((select SALARIO from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR) + VLR_TOTAL * (select COMISSAO from CAD_CLIENTES where  CODIGO=PEDIDOCONFERENCIA.VENDEDOR) /100), 0),

    CASE (SELECT APROVADO FROM PEDIDOS WHERE PEDIDOS.CODIGO=PEDIDOCONFERENCIA.PEDIDO)
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end as  APROVADO,


    CASE FATURADO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end as  STATUS


--From PEDIDOS
FROM PEDIDOCONFERENCIA


GO
/****** Object:  View [dbo].[VIEW_PEDIDOSCOMPRAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_PEDIDOSCOMPRAS](
   EMPRESA,
   CODIGO,
   DATA,
   DATA_ENTREGA,
   REQUISICAO,
   FORNECEDOR,
   FORNECEDOR_NOME,
   FORNECEDORPEDIDO,
   TRANSPORTADORA,
   TRANSPORTADORA_NOME,
   FORMAPAGTO,
   FORMAPAGTO_NOME,
   DEPARTAMENTO,
   DEPARTAMENTO_NOME,
   USUARIO,
   QTDE_PEDIDA,
   QTDE_ENTREGUE,
   QTDE_PENDENTE,
   VLR_TOTAL,
   FRETE_VALOR,
   FRETE_TIPO,
   FRETE_TIPO_STATUS,
   EFETIVADO,
   APROVADO
    
    )
AS
SELECT
COALESCE(EMPRESA,1),
CODIGO,
DATA,
DATA_ENTREGA,
COALESCE(REQUISICAO,0),
COALESCE(FORNECEDOR,0),
COALESCE( (SELECT NOME FROM CAD_CLIENTES        WHERE   CODIGO=COMPRA_PEDIDOS.FORNECEDOR), '***'),
COALESCE(FORNECEDORPEDIDO,'0'),
COALESCE(TRANSPORTADORA,0),
COALESCE( (SELECT NOME FROM CAD_CLIENTES WHERE  CODIGO=COMPRA_PEDIDOS.TRANSPORTADORA), '***'),
COALESCE(FORMAPAGTO,1),
COALESCE( (SELECT   NOME            FROM CAD_FORMAPAGTO WHERE  CODIGO=COMPRA_PEDIDOS.FORMAPAGTO), '***'),
COALESCE(DEPARTAMENTO,1),
COALESCE( (SELECT NOME FROM CAD_DEPARTAMENTOS    WHERE   CODIGO=COMPRA_PEDIDOS.DEPARTAMENTO), '***'),
COALESCE(USUARIO,1),
COALESCE(QTDE_PEDIDA,0),
COALESCE(QTDE_ENTREGUE,0),

COALESCE(QTDE_PEDIDA,0)-COALESCE(QTDE_ENTREGUE,0),
COALESCE(VLR_TOTAL,0),
COALESCE(FRETE_VALOR,0),
COALESCE( FRETE_TIPO, 'FOB'),

CASE FRETE_TIPO
   when 'CIF' then 'PAGO'
   when 'FOB' then 'A PAGAR'
   when ''    then 'SEM FRETE'
   
   when '1'   then 'PAGO'
   when '2'   then 'A PAGAR'
   when '9'   then 'SEM FRETE'
   else
      'SEM FRETE'
END,


COALESCE(EFETIVADO,'N'),
COALESCE(APROVADO,'N')




FROM COMPRA_PEDIDOS


GO
/****** Object:  View [dbo].[VIEW_PEDIDOSCOMPRASITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_PEDIDOSCOMPRASITENS] (
    EMPRESA,
    CODIGO,
    PRODUTO,
    DESCRICAO,
    UNIDADE,
    QTDE_PEDIDA,
    QTDE_ENTREGUE,
    QTDE_RESTANTE,
    VALOR_UNIT,
    DESCONTO,
    VLR_DESCONTO,
    VALOR_TOTAL)
AS
select

coalesce(EMPRESA,1),
coalesce(CODIGO,0),
coalesce(PRODUTO,'***'),
coalesce(  (select CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=COMPRA_PEDIDOS_ITENS.PRODUTO  ),'***'    ),
coalesce(UND,'***'),
coalesce(QTDE_PEDIDA,0),
coalesce(QTDE_ENTREGUE,0),
coalesce(QTDE_RESTANTE,0),
coalesce(VALOR_UNIT,0),
coalesce(DESCONTO,0),
coalesce(VLR_DESCONTO,0),
coalesce(VALOR_TOTAL,0)

FROM COMPRA_PEDIDOS_ITENS


GO
/****** Object:  View [dbo].[VIEW_PEDIDOSITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_PEDIDOSITENS](
    EMPRESA,
    CODIGO,
    REFERENCIA,
    DESCRICAO,
    VALOR_UNIT,
    QUANTIDADE,
    VLR_TOTAL    
    )
AS
select

coalesce(EMPRESA,1),
CODIGO,
REFERENCIA,
coalesce( (select CAD_PRODUTOS.DESCRICAO FROM CAD_PRODUTOS WHERE CAD_PRODUTOS.REFERENCIA=PEDIDOS_ITENS.REFERENCIA  ) ,''   ),

coalesce(QTDE,0),
coalesce(VLR_UNIT,0),
coalesce(VLR_TOTAL,0)


from PEDIDOS_ITENS
WHERE 
QTDE>0




GO
/****** Object:  View [dbo].[VIEW_PEDIDOSVENDAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  View [VIEW_PEDIDOSVENDAS]    Script Date: 12/12/2011 12:36:09 ******/

CREATE VIEW [dbo].[VIEW_PEDIDOSVENDAS] (
    EMPRESA,
    CODIGO,
    DOCUMENTO,
    TITULO,
    DATA,
    DATA_FATURAMENTO,
    DATA_ENTREGA,
    TIPO,
    CLIENTE,
    CLIENTE_NOME,
    
    CNPJ,
    IE,
    
    
    ENDERECO,
    NUMERO,
    BAIRRO,
    CEP,
    NOMECIDADE,
    UF,
    DDD,
    FONE,
    FAX,
    CONTATO,
    EMAIL,
    
    
    VENDEDOR,
    VENDEDOR_NOME,
    TRANSPORTADORA,
    TRANSPORTADORA_NOME,
    FORMA_PAGTO,
    FORMA_PAGTO_NOME,
    TIPOPAGAMENTO,
    VLR_DESCONTO,
    QTDE_TOTAL,
    VLR_TOTAL,
    VLR_PRODUTOS,
    APROVADO,
    STATUS,
    ITENS_IMPORTADO,
    STATUSPERCENTUAL,
    IMPRESSO,
    RESPONSAVEL,
    ENTREGAPARCIAL,
    VALORPARCIAL,
    PRODUZINDO,
    ORDEMPRODUCAO
    
    
    )
AS
select

    coalesce(EMPRESA,1),
    CODIGO,
    DOCUMENTO,
    'PEDIDO: '+cast(CODIGO as varchar(15)) +' (CLIENTE: '+coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOS.CLIENTE), '***')+' - CNPJ: '+coalesce( (select CPF_CNPJ from CAD_CLIENTES where  CODIGO=PEDIDOS.CLIENTE), '***')+')',
    DATA                  ,
    DATA_FATURAMENTO      ,
    DATA_ENTREGA          ,
    TIPO                  ,
    CLIENTE               ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOS.CLIENTE ), '***'),
    
    coalesce( (select CPF_CNPJ from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select RG_IE from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select ENDERECO from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select NUMERO from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '0'),
    coalesce( (select BAIRRO from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select CEP from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '0'),
    coalesce( (select NOMECIDADE from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select UF from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select DDD_FONE from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), 0),
    coalesce( (select FONE from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select FAX from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select CONTATO from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),
    coalesce( (select EMAIL from CAD_CLIENTES        where   CODIGO=PEDIDOS.CLIENTE), '***'),

    
    VENDEDOR              ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOS.VENDEDOR  ), '***'),
    transportadora         ,
    coalesce( (select NOME from CAD_CLIENTES where  CODIGO=PEDIDOS.TRANSPORTADORA    ), '***'),
    FORMAPAGTO           ,
   coalesce( (select   NOME            from CAD_FORMAPAGTO where  CODIGO=PEDIDOS.FORMAPAGTO), '***'),
   coalesce( (select   TIPO_PAGAMENTO            from CAD_FORMAPAGTO where  CODIGO=PEDIDOS.FORMAPAGTO), '***'),
    
    
    COALESCE( VLR_DESCONTO, 0),
    COALESCE( QTDE_TOTAL, 0),
    COALESCE( VLR_TOTAL, 0),
    COALESCE( VLR_PRODUTOS, 0),
    

    CASE APROVADO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end as  APROVADO,


    CASE STATUS
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       when 'C' then 'CANCELADO'
       else 'NAO'
    end as  STATUS,

    ITENS_IMPORTADO,

    COALESCE( STATUSPERCENTUAL,0),

    CASE IMPRESSO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end as  IMPRESSO,


    RESPONSAVEL,
    
    ENTREGAPARCIAL,
    ENTREGAPARCIALPERCENTUAL,
    
    --COALESCE(PRODUZINDO,'N')
    CASE PRODUZINDO
       when 'N' then 'NAO'
       when 'S' then 'SIM'
       else 'NAO'
    end as  PRODUZINDO,

    COALESCE(ORDEMPRODUCAO,0)
    
    
from PEDIDOS



GO
/****** Object:  View [dbo].[VIEW_PLANOCONTAS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_PLANOCONTAS](
    CODIGO,
    DESCRICAO,
    DESCRICAO_TREE,
    PLANO,
    TIPO,
    CODIGO_PLANO,
    NOME)
AS
select

PLANO_CONTAS_CLASSE.CODIGO,
PLANO_CONTAS_CLASSE.DESCRICAO,
PLANO_CONTAS_DETALHES.CODIGO_PLANO+' - '+PLANO_CONTAS_DETALHES.NOME,
CAST(PLANO_CONTAS_CLASSE.CODIGO AS VARCHAR(15))+' - '+PLANO_CONTAS_CLASSE.DESCRICAO,
PLANO_CONTAS_CLASSE.TIPO,
PLANO_CONTAS_DETALHES.CODIGO_PLANO,
PLANO_CONTAS_DETALHES.NOME


from
PLANO_CONTAS_CLASSE,    PLANO_CONTAS_DETALHES


where
PLANO_CONTAS_DETALHES.CODIGO=PLANO_CONTAS_CLASSE.CODIGO
;


GO
/****** Object:  View [dbo].[VIEW_REFERENCIA_TECIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_REFERENCIA_TECIDOS](
    CODIGO,
    REFERENCIA,
    PRODUTO,
    DESCRICAO,
    UND,
    QTDE_METROS,
    VLR_UNIT,
    VLR_TOTAL)
AS
select

    pcp_ordemproducao_itens.CODIGO,
    pcp_ordemproducao_itens.referencia,
    PCP_MATERIAPRIMA_TECIDOS.referencia,
    cad_produtos.DESCRICAO,
    PCP_MATERIAPRIMA_TECIDOS.UND,
    PCP_MATERIAPRIMA_TECIDOS.QTDE_METROS,
    PCP_MATERIAPRIMA_TECIDOS.VLR_UNIT,
    PCP_MATERIAPRIMA_TECIDOS.VLR_TOTAL

-- cast(PRC_VENDA as float)

from
   pcp_ordemproducao_itens,
   PCP_MATERIAPRIMA_TECIDOS,
   cad_produtos
WHERE

PCP_MATERIAPRIMA_TECIDOS.referencia=cad_produtos.referencia
;


GO
/****** Object:  View [dbo].[VIEW_REFERENCIASCADTECIDOS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[VIEW_REFERENCIASCADTECIDOS] (
    CODIGO,
    REFERENCIA,
    DESCRICAO,
    TIPO_PRODUTO,
    UNIDADE,
    ESTOQUESALDO,
    GRUPO,
    GRUPO_NOME,
    SUBGRUPO,
    SUBGRUPO_NOME,
    FORNECEDOR,
    FORNECEDOR_NOME,
    MARCADOR
    )
AS
SELECT
   COALESCE(cad_produtos.codigo,0),
   COALESCE(cad_produtos.referencia,'0'),
   COALESCE(cad_produtos.descricao,'***'),
   COALESCE(cad_produtos.tipo_produto,'***'),
   COALESCE(cad_produtos.unidade,'***'),
   COALESCE(cad_produtos.ESTOQUESALDO,0),
   COALESCE(cad_produtos.grupo , 0),
   COALESCE(cast(cad_produtos.grupo as varchar(15)), '0') + ' - '  + COALESCE( (SELECT cad_grupo.descricao    FROM cad_grupo  WHERE cad_grupo.codigo=cad_produtos.grupo), '***'),
   COALESCE(cad_produtos.subgrupo , 0),
   COALESCE(cast(cad_produtos.subgrupo as varchar(15)),'0' ) +  ' - ' +  COALESCE( (SELECT cad_subgrupo.descricao FROM cad_subgrupo WHERE cad_subgrupo.codigo=cad_produtos.grupo),  '***' ) ,
   
   COALESCE(cad_produtos.fornecedor , 0),
   COALESCE(( SELECT cad_clientes.nome FROM cad_clientes WHERE    cad_clientes.codigo=cad_produtos.fornecedor ) , '***'    ),
   'N'
   



 FROM CAD_PRODUTOS
 WHERE
 TIPO_PRODUTO='TCD'


GO
/****** Object:  View [dbo].[VIEW_REGIAO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_REGIAO](
    CLIENTE,
    NOME,
    NOME_FANTASIA,
    VENDEDOR,
    ENDERECO,
    BAIRRO,
    CEP,
    FONE,
    REFERENCIA,
    COD_REGIAO,
    REGIAO,
    CIDADE_UF)
AS
select

codigo,
nome,
NOME_FANTASIA,
VENDEDOR,
ENDERECO,
BAIRRO,
CEP,
FONE,
REFERENCIA,
coalesce( (select CODIGO from CAD_REGIOES  where CODIGO=CAD_CLIENTES.REGIAO), 0 ),
coalesce( (select NOME from CAD_REGIOES   where CODIGO=CAD_CLIENTES.REGIAO), '***'),
NOMECIDADE+' - '+UF
from CAD_CLIENTES
;


GO
/****** Object:  View [dbo].[VIEW_REL_FATURAMENTO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_REL_FATURAMENTO](
    EMPRESA,
    CODIGO,
    NUMERO,
    DATA,
    OPERACAO,
    PEDIDO,
    CLIENTE_TIPO,
    CLIENTE,
    CLIENTE_NOME,
    CNPJ,
    IE,
    ENDERECO,
    CEP,
    BAIRRO,
    FONE,
    CIDADE,
    UF,
    VENDEDOR,
    VENDEDOR_NOME,
    CFOP,
    CFOP_NOME,
    PRODUTO,
    DESCRICAO,
    CLASSIFICACAO_FISCAL,
    SITUACAO_TRIBUTARIA,
    QUANTIDADE,
    VLR_UNIT,
    IPI,
    IPI_VALOR,
    ICMS,
    ICMS_VALOR,
    VLR_ISS,
    VLR_TOTAL_ITENS,
    NF_FORMA_PAGTO,
    NF_FORMA_PAGTO_NOME,
    NF_VLR_DESCONTO,
    NF_VLR_DESP_ACESS,
    NF_BASE_CALC_ICMS,
    NF_VALOR_ICMS,
    NF_VALOR_IPI,
    NF_QTDE_PRODUTOS,
    NF_VLR_TOTAL,
    TOTAL_PEDIDO
    
    )
AS
select

coalesce( EMPRESA, 1),
CODIGO,
coalesce( NOTAFISCAL, 0),
EMISSAO,
coalesce( OPERACAO, '***'),
coalesce( (select PEDIDO from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),

coalesce( (select TIPO from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),

coalesce( CLIENTE, 0),
coalesce( (select NOME from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),

coalesce( (select CPF_CNPJ      from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),
coalesce( (select RG_IE         from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),
coalesce( (select ENDERECO      from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),
coalesce( (select CEP           from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),
coalesce( (select BAIRRO        from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),
coalesce( (select FONE          from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),
coalesce( (select NOMECIDADE   from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),
coalesce( (select UF            from CAD_CLIENTES where  CODIGO=VENDAS_ITENS.CLIENTE), '***'),

coalesce( VENDEDOR, 0),
coalesce( cast(VENDEDOR as varchar(10))+' - '+(select NOME from CAD_CLIENTES WHERE CODIGO=VENDAS_ITENS.VENDEDOR ), '***'),


coalesce( (select  CFOP         from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( (select DESCRICAO     FROM CAD_CFOP where  CAD_CFOP.CODIGO=VENDAS_ITENS.cfop), '***'),

coalesce(                       PRODUTO, '***'),
coalesce( (select DESCRICAO     from cad_produtos where  REFERENCIA=VENDAS_ITENS.PRODUTO), '***'),
coalesce( VENDAS_ITENS.CLASSIFICACAO_FISCAL, ''),
coalesce( VENDAS_ITENS.SITUACAO_TRIBUTARIA, ''),
coalesce(                       QUANTIDADE, 0),
coalesce(                       VLR_UNIT,   0),
coalesce(                       IPI, 0),
coalesce(                       VLR_IPI, 0),
coalesce(                       ICMS, 0),
coalesce(                       VLR_ICMS, 0),
coalesce( (select ISS_VALOR     from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce(                       VLR_TOTAL, 0),

coalesce(                       formapagto, 0),
coalesce( (select NOME          from  CAD_FORMAPAGTO where  CAD_FORMAPAGTO.codigo=VENDAS_ITENS.formapagto), '***'),

coalesce( (select VLR_DESCONTO from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( (select VLR_DESPESAS_ASSESSORIAS from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( (select ICMS_BASECALCULO from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( (select ICMS_VALOR from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( (select IPI_VALOR from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( (select QTDE_PRODUTOS      from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
coalesce( (select TOTAL_NF      from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO), 0),
(CASE  WHEN (select TOTAL_NF      from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO) < ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=(select PEDIDO  from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO)  ) THEN ( SELECT PEDIDOS.VLR_TOTAL FROM PEDIDOS WHERE PEDIDOS.CODIGO=(select PEDIDO  from VENDAS where VENDAS.CODIGO=VENDAS_ITENS.CODIGO)  ) END)

 from VENDAS_ITENS
;


GO
/****** Object:  View [dbo].[VIEW_RELPRODUCAOITENS]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_RELPRODUCAOITENS]  (
  EMPRESA,
  CODIGO,
  APROVADO,
  DATA,
  DATAFECHAMENTO,
  NATUREZA,
  ENCERRADO,
  GRIFE,
  GRIFE_NOME,
  COLECAO,
  COLECAO_NOME,
  GRUPO,
  GRUPO_NOME,
  SUBGRUPO,
  SUBGRUPO_NOME,
  FAIXAETARIA,
  FAIXAETARIA_NOME,
  GENERO,
  GENERO_NOME,
  GRADETAMANHO,
  GRADETAMANHO_NOME,
  NCM,
  REFERENCIA,
  IDENTIFICADOR,
  DESCRICAO,
  COR,
  TAMANHO,
  ORDEM_GRADE,
  PRODUZIR,
  PRODUZIDO,
  PRODUZINDO
  
    )
AS
SELECT
    COALESCE(EMPRESA,0),
    COALESCE(CODIGO,0),
    COALESCE(APROVADO,'N'),
    DATA,
    (SELECT DATAFECHAMENTO FROM PCP_ORDEMPRODUCAO  WHERE CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO),
    COALESCE((SELECT NATUREZA FROM PCP_ORDEMPRODUCAO  WHERE CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO),''),
    COALESCE((SELECT ENCERRADO FROM PCP_ORDEMPRODUCAO  WHERE CODIGO=PCP_ORDEMPRODUCAO_MOVIMENTO.CODIGO),'N'),
    
    COALESCE( (SELECT GRIFE FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), 0),
    COALESCE( (SELECT NOME  FROM CAD_GRIFES WHERE CAD_GRIFES.CODIGO=(SELECT GRIFE FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA)   ), '***'),
    
    COALESCE( (SELECT COLECAO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), 0),
    COALESCE( (SELECT NOME  FROM CAD_COLECAO WHERE CAD_COLECAO.CODIGO=(SELECT COLECAO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA)   ), '***'),
    
    COALESCE( (SELECT GRUPO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), 0),
    COALESCE( (SELECT DESCRICAO  FROM CAD_GRUPO WHERE CAD_GRUPO.CODIGO=(SELECT GRUPO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA)   ), '***'),
    
    COALESCE( (SELECT SUBGRUPO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), 0),
    COALESCE( (SELECT DESCRICAO  FROM CAD_SUBGRUPO WHERE CAD_SUBGRUPO.CODIGO=(SELECT SUBGRUPO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA)   ), '***'),
    
    COALESCE( (SELECT FAIXA_ETARIA FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), 0),
    COALESCE( (SELECT NOME  FROM CAD_FAIXAETARIA WHERE CAD_FAIXAETARIA.CODIGO=(SELECT FAIXA_ETARIA FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA)   ), '***'),

    COALESCE( (SELECT GENERO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), 0),
    COALESCE( (SELECT NOME  FROM CAD_GENERO WHERE CAD_GENERO.CODIGO=(SELECT GENERO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA)   ), '***'),

    COALESCE( (SELECT GRADE FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), 0),
    COALESCE( (SELECT DESCRICAO  FROM CAD_GRADE WHERE CAD_GRADE.CODIGO=(SELECT GRADE FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA)   ), '***'),


    COALESCE( (SELECT NCM FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), '***'),

    COALESCE(REFERENCIA,'***'),

    IDENTIFICADOR=dbo.FNC_IDENTIFICADOR( REFERENCIA,
                                         COR_ID,
                                         TAMANHO_ID
                                          ),

    COALESCE( (SELECT DESCRICAO FROM CAD_PRODUTOS WHERE  CAD_PRODUTOS.REFERENCIA=PCP_ORDEMPRODUCAO_MOVIMENTO.REFERENCIA), '***'),
    
    COR,
    TAMANHO,
    ORDEM_GRADE,
    
    QTDE_TOTAL,
    QTDE_PRODUZIDA,
    QTDE_RESTANTE
    
    
   

FROM PCP_ORDEMPRODUCAO_MOVIMENTO
WHERE
TAMANHO>'0' AND TAMANHO>''


GO
/****** Object:  View [dbo].[VIEW_ROMANEIO]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[VIEW_ROMANEIO](
    EMPRESA,
    ROMANEIO,
    DATA,
    DATA_ENTRADASAIDA,
    NOTAFISCAL,
    OPERACAO,
    VLR_TOTAL,

    TRANSPORTADORA,
    TRANSPORTADORA_NOME,
    TRANSPORTADORA_CNPJ,
    TRANSPORTADORA_IE,
    TRANSPORTADORA_ENDERECO,
    TRANSPORTADORA_BAIRRO,
    TRANSPORTADORA_CEP,
    TRANSPORTADORA_NOMECIDADE,
    TRANSPORTADORA_UF,
    TRANSPORTADORA_DDD,
    TRANSPORTADORA_FONE,
    TRANSPORTADORA_FAX,
    TRANSPORTADORA_CONTATO,
    TRANSPORTADORA_EMAIL,
    TRANSPORTADORA_VOLUME,
    TRANSPORTADORA_FRETE,
    TRANSPORTADORA_FRETE_STATUS,
    
    CLIENTE,
    CLIENTE_NOME,
    CLIENTE_CNPJ,
    CLIENTE_IE,
    CLIENTE_ENDERECO,
    CLIENTE_BAIRRO,
    CLIENTE_CEP,
    CLIENTE_NOMECIDADE,
    CLIENTE_UF,
    CLIENTE_DDD,
    CLIENTE_FONE,
    CLIENTE_FAX,
    CLIENTE_CONTATO,
    CLIENTE_EMAIL,

    VENDEDOR,
    VENDEDOR_NOME

    

    )
AS
SELECT
DISTINCT 
COALESCE( EMPRESA,1),

ROMANEIO= RTRIM( LTRIM(  convert(char(10), VENDAS.EMPRESA)        ) )             + '-' +
          RTRIM( LTRIM(  convert(char(10), VENDAS.TRANSPORTADORA  )))             + '.' +
          (select dbo.SZEROS (day(EMISSAO),    2))             + --'.' +
          (select dbo.SZEROS (month(EMISSAO),  2))             + --'.' +
          (select dbo.SZEROS (year(EMISSAO),   4))             , --+ '.' ,
         
/*

ROMANEIO= RTRIM( LTRIM(  convert(char(10), VENDAS.EMPRESA)        ) )             + '-' + 
          RTRIM( LTRIM(  convert(char(10), VENDAS.TRANSPORTADORA  )))             + '.' + 
          RTRIM( LTRIM(  convert(char(2) , day(EMISSAO)           )))             + --'.' +
          RTRIM( LTRIM(  convert(char(2) , month(EMISSAO)         )))             + --'.' +
          RTRIM( LTRIM(  convert(char(4) , year(EMISSAO)          )))             , --+ '.' ,



*/         

EMISSAO,
COALESCE(DATA_ENTRADASAIDA,EMISSAO),
COALESCE( NOTAFISCAL,0),
COALESCE( OPERACAO,'S'),
COALESCE( TOTAL_NF,0),


COALESCE( VENDAS.TRANSPORTADORA,0),
COALESCE( (SELECT NOME FROM CAD_CLIENTES WHERE  CODIGO=VENDAS.TRANSPORTADORA), '***'),

COALESCE( (select CPF_CNPJ                 from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select RG_IE                    from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select ENDERECO+', No: '+NUMERO from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select BAIRRO                   from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select CEP                      from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '0'),
COALESCE( (select NOMECIDADE               from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select UF                       from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select DDD_FONE                 from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), 0),
COALESCE( (select FONE                     from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select FAX                      from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select CONTATO                  from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),
COALESCE( (select EMAIL                    from CAD_CLIENTES        where CODIGO=VENDAS.TRANSPORTADORA), '***'),

COALESCE( VENDAS.FRETE_QUANTIDADE,1),

COALESCE( VENDAS.FRETE, 'FOB'),

CASE VENDAS.FRETE
   when 'CIF' then 'PAGO'
   when 'FOB' then 'A PAGAR'
   when ''    then 'SEM FRETE'
   
   when '1'   then 'PAGO'
   when '2'   then 'A PAGAR'
   when '9'   then 'SEM FRETE'
   else
      'SEM FRETE'
END,

COALESCE( CLIENTE,0),
COALESCE( (SELECT NOME                     FROM CAD_CLIENTES        WHERE CODIGO=VENDAS.CLIENTE), '***'),

COALESCE( (select CPF_CNPJ                 from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select RG_IE                    from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select ENDERECO+', No: '+NUMERO from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select BAIRRO                   from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select CEP                      from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '0'),
COALESCE( (select NOMECIDADE               from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select UF                       from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select DDD_FONE                 from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), 0),
COALESCE( (select FONE                     from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select FAX                      from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select CONTATO                  from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),
COALESCE( (select EMAIL                    from CAD_CLIENTES        where CODIGO=VENDAS.CLIENTE), '***'),

COALESCE( VENDEDOR,0),
COALESCE( (SELECT NOME FROM CAD_CLIENTES WHERE  CODIGO=VENDAS.VENDEDOR), '***')



FROM VENDAS
WHERE
VENDAS.TRANSPORTADORA>0


GO
/****** Object:  View [dbo].[VIEW_TERCEIRIZADOPAGAR]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW  [dbo].[VIEW_TERCEIRIZADOPAGAR] (
 EMPRESA,
 CODIGO,
 ORDEMPRODUCAO,
 DATA,
 DATARETORNO,
 TERCEIRIZADO,
 TERCEIRIZADO_NOME,
 
    CNPJ,
    IE,
    ENDERECO,
    NUMERO,
    BAIRRO,
    CEP,
    NOMECIDADE,
    UF,
    DDD,
    FONE,
    FAX,
    CONTATO,
    EMAIL,    
 
 
 
 FASE,
 FASE_NOME,
 QTDE_TOTAL,
 VLR_TOTAL,
 OBSERVACAO,
 ENCERRADO,
 GEROUPAGAMENTO
    )
AS
select
 coalesce(EMPRESA,1),
 coalesce(CODIGO,0),
 coalesce(ORDEMPRODUCAO,0),
 coalesce(DATA,GETDATE()),
 DATARETORNO,
 coalesce(TERCEIRIZADO,0),
 TERCEIRIZADOORIGEM_NOME=(SELECT CAD_CLIENTES.NOME FROM CAD_CLIENTES WHERE CAD_CLIENTES.CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO  ),

    coalesce( (select CPF_CNPJ from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select RG_IE from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select ENDERECO from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select NUMERO from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), 0),
    coalesce( (select BAIRRO from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select CEP from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '0'),
    coalesce( (select NOMECIDADE from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select UF from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select DDD_FONE from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), 0),
    coalesce( (select FONE from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select FAX from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select CONTATO from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),
    coalesce( (select EMAIL from CAD_CLIENTES        where CODIGO=PCP_TERCEIRIZADO.TERCEIRIZADO), '***'),


 coalesce(FASE,0),
 FASE_NOME=(SELECT CAD_FASES.NOME FROM CAD_FASES  WHERE CAD_FASES.CODIGO=PCP_TERCEIRIZADO.FASE  ),
 coalesce(QTDE_TOTAL,0),
 coalesce(VLR_TOTAL,0),
 coalesce(OBSERVACAO,''),
 coalesce(ENCERRADO,'N'),
 coalesce(GEROUPAGAMENTO,'N')


FROM PCP_TERCEIRIZADO




GO
/****** Object:  View [dbo].[VIEW_ULTIMACOMPRA]    Script Date: 15/03/2014 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ULTIMACOMPRA](
    DATA,
    CODIGO_FORNECEDOR,
    FORNECEDOR,
    PRODUTO,
    VLR_ANTERIOR,
    QTDE_SIMPLES,
    QTDE_ANTERIOR)
AS
select
DATA,
fornecedor,
coalesce( (select NOME from CAD_CLIENTES where    CODIGO=compras_itens.FORNECEDOR), '***'),
PRODUTO,
vl_unitario,
'QUANTIDADE: '+ cast(quantidade as varchar(15))+' / '+DATA,
quantidade
from compras_itens
;


GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CAD_CLIENTES_CNPJ]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CAD_CLIENTES_CNPJ] ON [dbo].[CAD_CLIENTES]
(
	[CPF_CNPJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CAD_CLIENTES_NOME]    Script Date: 15/03/2014 11:50:36 ******/
CREATE NONCLUSTERED INDEX [IX_CAD_CLIENTES_NOME] ON [dbo].[CAD_CLIENTES]
(
	[NOME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1315613528]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_1315613528] ON [dbo].[CAD_EMPRESA_TIPO]
(
	[TIPO_EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CAD_GRUPO]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CAD_GRUPO] ON [dbo].[CAD_GRUPO]
(
	[DESCRICAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CAD_SUBGRUPO]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CAD_SUBGRUPO] ON [dbo].[CAD_SUBGRUPO]
(
	[DESCRICAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_COMPRAS_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_COMPRAS_ITENS] ON [dbo].[COMPRAS_ITENS]
(
	[CODIGO] ASC,
	[PRODUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PCP_MATERIAPRIMA]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PCP_MATERIAPRIMA] ON [dbo].[PCP_MATERIAPRIMA]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[REFERENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PCP_MATERIAPRIMA_TECIDOS]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PCP_MATERIAPRIMA_TECIDOS] ON [dbo].[PCP_MATERIAPRIMA_TECIDOS]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[REFERENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PCP_ORDEMPRODUCAO_ITENS_1]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PCP_ORDEMPRODUCAO_ITENS_1] ON [dbo].[PCP_ORDEMPRODUCAO_ITENS]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[APROVADO] ASC,
	[DATA] ASC,
	[REFERENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PCP_ORDEMPRODUCAO_MP]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PCP_ORDEMPRODUCAO_MP] ON [dbo].[PCP_ORDEMPRODUCAO_MP]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[REFERENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PCP_ORDEMPRODUCAO_MPTECIDOS]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PCP_ORDEMPRODUCAO_MPTECIDOS] ON [dbo].[PCP_ORDEMPRODUCAO_MPTECIDOS]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[REFERENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PEDIDOCONFERENCIA]    Script Date: 15/03/2014 11:50:36 ******/
CREATE NONCLUSTERED INDEX [IX_PEDIDOCONFERENCIA] ON [dbo].[PEDIDOCONFERENCIA]
(
	[PEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PEDIDOCONFERENCIA_ITENS_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
CREATE NONCLUSTERED INDEX [IX_PEDIDOCONFERENCIA_ITENS_GRADE] ON [dbo].[PEDIDOCONFERENCIA_ITENS]
(
	[PEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PEDIDOS_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PEDIDOS_ITENS] ON [dbo].[PEDIDOS_ITENS]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[REFERENCIA] ASC,
	[APROVADO] ASC,
	[ORDEMPRODUCAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PEDIDOS_ITENS_GRADE]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PEDIDOS_ITENS_GRADE] ON [dbo].[PEDIDOS_ITENS_GRADE]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[REFERENCIA] ASC,
	[APROVADO] ASC,
	[ORDEMPRODUCAO] ASC,
	[COR_ID] ASC,
	[TAMANHO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TPRECO_REFERENCIAS]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TPRECO_REFERENCIAS] ON [dbo].[TPRECO_REFERENCIAS]
(
	[CODIGO] ASC,
	[REFERENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VENDAS_DEVOLUCAO_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_VENDAS_DEVOLUCAO_ITENS] ON [dbo].[VENDAS_DEVOLUCAO_ITENS]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[PRODUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_VENDAS_ITENS]    Script Date: 15/03/2014 11:50:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_VENDAS_ITENS] ON [dbo].[VENDAS_ITENS]
(
	[EMPRESA] ASC,
	[CODIGO] ASC,
	[PRODUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAD_BANCOS] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_CFOP] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_CFOP] ADD  DEFAULT ((0)) FOR [REDUCAO_ICMS]
GO
ALTER TABLE [dbo].[CAD_CFOP] ADD  DEFAULT ((0)) FOR [REDUCAO_IPI]
GO
ALTER TABLE [dbo].[CAD_CFOP] ADD  DEFAULT ((0)) FOR [DESCONTO_SEFAZ]
GO
ALTER TABLE [dbo].[CAD_CFOP] ADD  DEFAULT ((0)) FOR [DESCONTO_COFINS]
GO
ALTER TABLE [dbo].[CAD_CFOP] ADD  DEFAULT ((0)) FOR [DESCONTO_PIS]
GO
ALTER TABLE [dbo].[CAD_CFOP] ADD  DEFAULT ((0)) FOR [DESCONTO_SUFRAMA]
GO
ALTER TABLE [dbo].[CAD_CLIENTES] ADD  CONSTRAINT [DF__CAD_CLIEN__CREDI__6A50C1DA]  DEFAULT ((0)) FOR [CREDITO_LIMITE]
GO
ALTER TABLE [dbo].[CAD_CLIENTES] ADD  CONSTRAINT [DF__CAD_CLIEN__CREDI__6B44E613]  DEFAULT ((0)) FOR [CREDITO_UTILIZADO]
GO
ALTER TABLE [dbo].[CAD_CLIENTES] ADD  CONSTRAINT [DF__CAD_CLIEN__CREDI__6C390A4C]  DEFAULT ((0)) FOR [CREDITO_DISPONIVEL]
GO
ALTER TABLE [dbo].[CAD_CLIENTES] ADD  CONSTRAINT [DF__CAD_CLIEN__CONJU__6D2D2E85]  DEFAULT ((0)) FOR [CONJUGE_SALARIO]
GO
ALTER TABLE [dbo].[CAD_CLIENTES] ADD  CONSTRAINT [DF__CAD_CLIEN__EMPRE__6E2152BE]  DEFAULT ((0)) FOR [EMPREGO_SALARIO]
GO
ALTER TABLE [dbo].[CAD_CLIENTES] ADD  CONSTRAINT [DF__CAD_CLIEN__COMIS__6F1576F7]  DEFAULT ((0)) FOR [COMISSAO]
GO
ALTER TABLE [dbo].[CAD_CLIENTES] ADD  CONSTRAINT [DF__CAD_CLIEN__SALAR__70099B30]  DEFAULT ((0)) FOR [SALARIO]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_BANCO] ADD  CONSTRAINT [DF__CAD_CLIEN__CLIEN__59E54FE7]  DEFAULT ((0)) FOR [CLIENTE]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_COMERCIO] ADD  CONSTRAINT [DF__CAD_CLIEN__CLIEN__5708E33C]  DEFAULT ((0)) FOR [CLIENTE]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_COMERCIO] ADD  CONSTRAINT [DF__CAD_CLIEN__VLR_U__57FD0775]  DEFAULT ((0)) FOR [VLR_ULTIMACOMPRA]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_COMERCIO] ADD  CONSTRAINT [DF__CAD_CLIEN__VLR_P__58F12BAE]  DEFAULT ((0)) FOR [VLR_PARCELA]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_CREDITOS] ADD  CONSTRAINT [DF_CAD_CLIENTES_CREDITOS_VALOR]  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_CREDITOS] ADD  CONSTRAINT [DF_CAD_CLIENTES_CREDITOS_QUITADO]  DEFAULT ('N') FOR [UTILIZADO]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_SOCIOS] ADD  CONSTRAINT [DF__CAD_CLIEN__CLIEN__55209ACA]  DEFAULT ((0)) FOR [CLIENTE]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_SOCIOS] ADD  CONSTRAINT [DF__CAD_CLIEN__PARTI__5614BF03]  DEFAULT ((0)) FOR [PARTICIPACAO]
GO
ALTER TABLE [dbo].[CAD_COLECAO] ADD  DEFAULT ((0)) FOR [PECAS_META]
GO
ALTER TABLE [dbo].[CAD_COLECAO] ADD  DEFAULT ((0)) FOR [QTDE_MODELOS]
GO
ALTER TABLE [dbo].[CAD_COLECAO] ADD  DEFAULT ((0)) FOR [VALOR_META]
GO
ALTER TABLE [dbo].[CAD_CONTAS] ADD  CONSTRAINT [DF_FIN_CONTACAIXA_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[CAD_CONTAS] ADD  CONSTRAINT [DF_CAD_CONTAS_DATA]  DEFAULT (getdate()) FOR [DATA]
GO
ALTER TABLE [dbo].[CAD_CONTAS] ADD  CONSTRAINT [DF_CAD_CONTAS_SALDOINICIAL]  DEFAULT ((0)) FOR [SALDOINICIAL]
GO
ALTER TABLE [dbo].[CAD_CONTAS] ADD  CONSTRAINT [DF_FIN_CONTACAIXA_SALDO]  DEFAULT ((0)) FOR [SALDOATUAL]
GO
ALTER TABLE [dbo].[CAD_ETIQUETAS] ADD  DEFAULT ((0)) FOR [TOTAL]
GO
ALTER TABLE [dbo].[CAD_ETIQUETASDET] ADD  DEFAULT ((0)) FOR [PERCENTUAL]
GO
ALTER TABLE [dbo].[CAD_FASES] ADD  CONSTRAINT [DF_CAD_FASES_IMPRIMEOP]  DEFAULT ('S') FOR [IMPRIMEOP]
GO
ALTER TABLE [dbo].[CAD_FASESGRADE] ADD  CONSTRAINT [DF_CAD_FASESGRADE_IMPRIMEOP]  DEFAULT ('S') FOR [IMPRIMEOP]
GO
ALTER TABLE [dbo].[CAD_FASESGRADE_LISTA] ADD  CONSTRAINT [DF_CAD_FASESGRADE_LISTA_IMPRIMEOP]  DEFAULT ('S') FOR [IMPRIMEOP]
GO
ALTER TABLE [dbo].[CAD_FORMAPAGTO] ADD  DEFAULT ((0)) FOR [ACRESCIMO]
GO
ALTER TABLE [dbo].[CAD_FORMAPAGTO] ADD  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[CAD_FORMAPAGTO] ADD  DEFAULT ((0)) FOR [PARCELAMINIMA]
GO
ALTER TABLE [dbo].[CAD_FORMAPAGTODIAS] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_FORMAPAGTODIAS] ADD  DEFAULT ((0)) FOR [DIAS]
GO
ALTER TABLE [dbo].[CAD_FORMAPAGTODIAS] ADD  DEFAULT ((0)) FOR [DIA_FIXO]
GO
ALTER TABLE [dbo].[CAD_GRADELISTA] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_LOTEPRODUCAO] ADD  DEFAULT ((0)) FOR [PECAS_META]
GO
ALTER TABLE [dbo].[CAD_MAQUINAS] ADD  DEFAULT ((0)) FOR [NRO_AGULHAS]
GO
ALTER TABLE [dbo].[CAD_MAQUINAS] ADD  DEFAULT ((0)) FOR [NRO_FIOS]
GO
ALTER TABLE [dbo].[CAD_MOTIVOBAIXA] ADD  CONSTRAINT [DF_CAD_MOTIVOBAIXA_NOME]  DEFAULT ('') FOR [NOME]
GO
ALTER TABLE [dbo].[CAD_PARAMCUSTOS] ADD  DEFAULT ((0)) FOR [PERCENTUAL]
GO
ALTER TABLE [dbo].[CAD_PROCESSO_MAQUINA] ADD  DEFAULT ((0)) FOR [MAQUINA]
GO
ALTER TABLE [dbo].[CAD_PROCESSO_MAQUINA_DETALHE] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_PROCESSO_MAQUINA_DETALHE] ADD  DEFAULT ((0)) FOR [MAQUINA]
GO
ALTER TABLE [dbo].[CAD_PROCESSO_MAQUINA_DETALHE] ADD  DEFAULT ((0)) FOR [PROCESSO]
GO
ALTER TABLE [dbo].[CAD_PROCESSO_OPERADOR_DETALHE] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_PROCESSO_OPERADOR_DETALHE] ADD  DEFAULT ((0)) FOR [MAQUINA]
GO
ALTER TABLE [dbo].[CAD_PROCESSOS] ADD  DEFAULT ((0)) FOR [CUSTO]
GO
ALTER TABLE [dbo].[CAD_PROCESSOSGRADE] ADD  DEFAULT ((0)) FOR [CUSTO_TOTAL]
GO
ALTER TABLE [dbo].[CAD_PROCESSOSLISTA] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_PROCESSOSLISTA] ADD  DEFAULT ((0)) FOR [PROCESSO]
GO
ALTER TABLE [dbo].[CAD_PROCESSOSLISTA] ADD  DEFAULT ((0)) FOR [CUSTO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__GRUPO__7AF13DF7]  DEFAULT ((0)) FOR [GRUPO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__SUBGR__7BE56230]  DEFAULT ((0)) FOR [SUBGRUPO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_OZ]  DEFAULT ((0)) FOR [OZ]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODUT__PESO__7CD98669]  DEFAULT ((0)) FOR [PESO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PESO___7DCDAAA2]  DEFAULT ((0)) FOR [PESO_LIQUIDO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PESO___7EC1CEDB]  DEFAULT ((0)) FOR [PESO_M2]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__QTDE___7FB5F314]  DEFAULT ((0)) FOR [QTDE_TECIDOS]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__QTDE___00AA174D]  DEFAULT ((0)) FOR [QTDE_OPCOES]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PRAZO__019E3B86]  DEFAULT ((0)) FOR [PRAZOENTREGA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__COMIS__02925FBF]  DEFAULT ((0)) FOR [COMISSAO_VAREJO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__COMIS__038683F8]  DEFAULT ((0)) FOR [COMISSAO_ATACADO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__COMIS__047AA831]  DEFAULT ((0)) FOR [COMISSAO_REPRESENTANTE]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__VOLUM__056ECC6A]  DEFAULT ((0)) FOR [VOLUME]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_ATIVO]  DEFAULT ('S') FOR [ATIVO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__TOTAL__0662F0A3]  DEFAULT ((0)) FOR [TOTAL_RESERVA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__TOTAL__075714DC]  DEFAULT ((0)) FOR [TOTAL_ORDEMPRODUCAO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__TOTAL__093F5D4E]  DEFAULT ((0)) FOR [TOTAL_QTDEMATPRIMA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__TOTAL__0A338187]  DEFAULT ((0)) FOR [TOTAL_VLRMATPRIMA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__TOTAL__0B27A5C0]  DEFAULT ((0)) FOR [TOTAL_PROCESSO_TEMPO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__TOTAL__0C1BC9F9]  DEFAULT ((0)) FOR [TOTAL_PROCESSO_CUSTOS]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__TOTAL__0D0FEE32]  DEFAULT ((0)) FOR [TOTAL_CUSTOS_PERCENTUAL]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__TOTAL__0E04126B]  DEFAULT ((0)) FOR [TOTAL_CUSTOS_VALOR]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__SALDO__0EF836A4]  DEFAULT ((0)) FOR [SALDO_IMPLANTACAO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__ESTOQ__0FEC5ADD]  DEFAULT ((0)) FOR [ESTOQUEMINIMO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__ESTOQ__10E07F16]  DEFAULT ((0)) FOR [ESTOQUEMAXIMO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__ESTOQ__11D4A34F]  DEFAULT ((0)) FOR [ESTOQUESALDO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__MG_LU__12C8C788]  DEFAULT ((0)) FOR [MG_LUCRO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODUTO__IPI__13BCEBC1]  DEFAULT ((0)) FOR [IPI]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODUT__ICMS__14B10FFA]  DEFAULT ((0)) FOR [ICMS]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODUTO__PIS__15A53433]  DEFAULT ((0)) FOR [PIS]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__COFIN__1699586C]  DEFAULT ((0)) FOR [COFINS]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PUBLI__178D7CA5]  DEFAULT ((0)) FOR [PUBLICIDADE]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__INADI__1881A0DE]  DEFAULT ((0)) FOR [INADIMPLENCIA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__ADMIN__1975C517]  DEFAULT ((0)) FOR [ADMINISTRATIVO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__IMPOR__1A69E950]  DEFAULT ((0)) FOR [IMPORTACAO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PERC___1B5E0D89]  DEFAULT ((0)) FOR [PERC_FRETE]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__FINAN__1C5231C2]  DEFAULT ((0)) FOR [FINANCEIRO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__IMPOS__1D4655FB]  DEFAULT ((0)) FOR [IMPOSTOS_OUTROS]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__MARKU__1E3A7A34]  DEFAULT ((0)) FOR [MARKUP]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODUTOS__IR__1F2E9E6D]  DEFAULT ((0)) FOR [IR]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PRC_C__2022C2A6]  DEFAULT ((0)) FOR [PRC_CUSTOBRUTO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_PRC_PRODUCAO]  DEFAULT ((0)) FOR [PRC_CUSTOPRODUCAO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PRC_C__2116E6DF]  DEFAULT ((0)) FOR [PRC_CUSTO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PRC_V__220B0B18]  DEFAULT ((0)) FOR [PRC_VENDA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__LUCRO__22FF2F51]  DEFAULT ((0)) FOR [LUCRO_LIQUIDO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PRODU__23F3538A]  DEFAULT ((0)) FOR [PRODUCAO_TEMPO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] ADD  CONSTRAINT [DF__CAD_PRODU__PRODU__24E777C3]  DEFAULT ((0)) FOR [PRODUCAO_CUSTOS]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_GRADES] ADD  CONSTRAINT [DF_CAD_PRODUTOS_GRADES_QUANTIDADE]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_GRADESQUALIDADES] ADD  CONSTRAINT [DF_CAD_PRODUTOS_GRADESQUALIDADES_QUANTIDADE]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_HISTORICO] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_HISTORICO] ADD  DEFAULT ((0)) FOR [PRECO_CUSTO_ANTERIOR]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_HISTORICO] ADD  DEFAULT ((0)) FOR [PRECO_CUSTO_NOVO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_HISTORICO] ADD  DEFAULT ((0)) FOR [PRECO_VENDA_ANTERIOR]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_HISTORICO] ADD  DEFAULT ((0)) FOR [PRECO_VENDA_NOVO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_HISTORICO] ADD  DEFAULT ((0)) FOR [ESTOQUE_ANTERIOR]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_HISTORICO] ADD  DEFAULT ((0)) FOR [ESTOQUE_NOVO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTACAO_QTDE_PRODUZIR]  DEFAULT ((0)) FOR [QTDE_PRODUZIR]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTACAO_QTDE_PRODUZIDO]  DEFAULT ((0)) FOR [QTDE_PRODUZIDO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTACAO_QTDE_PRODUZINDO]  DEFAULT ((0)) FOR [QTDE_PRODUZINDO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTACAO_QTDE_VENDIDO]  DEFAULT ((0)) FOR [QTDE_VENDIDO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTACAO_QTDE_ESTOQUE]  DEFAULT ((0)) FOR [QTDE_ESTOQUE]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTACAO_QTDE_ESTOQUEREAL]  DEFAULT ((0)) FOR [QTDE_ESTOQUEREAL]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTACAO_QTDE_PRODUZIR_DEMANDA]  DEFAULT ((0)) FOR [QTDE_PRODUZIR_DEMANDA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_MOVIMENTACAO] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTACAO_VALOR_UNIT]  DEFAULT ((0)) FOR [VALOR_UNIT]
GO
ALTER TABLE [dbo].[CAD_TURNO_GRADE] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[CAD_UF_IMPOSTOS] ADD  DEFAULT ((0)) FOR [ICMS]
GO
ALTER TABLE [dbo].[CAD_UF_IMPOSTOS] ADD  DEFAULT ((0)) FOR [ICMS_PFISICA]
GO
ALTER TABLE [dbo].[CAD_UF_IMPOSTOS] ADD  DEFAULT ((0)) FOR [ISS]
GO
ALTER TABLE [dbo].[CAD_UF_IMPOSTOS] ADD  DEFAULT ((0)) FOR [IPI]
GO
ALTER TABLE [dbo].[CAD_UF_IMPOSTOS] ADD  DEFAULT ((0)) FOR [IR]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS] ADD  CONSTRAINT [DF_COMPRA_PEDIDOS_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS] ADD  CONSTRAINT [DF__COMPRA_PE__TOT_I__63D8CE75]  DEFAULT ((0)) FOR [QTDE_PEDIDA]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS] ADD  CONSTRAINT [DF__COMPRA_PE__TOT_P__62E4AA3C]  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS] ADD  CONSTRAINT [DF__COMPRA_PE__TOTAL__64CCF2AE]  DEFAULT ((0)) FOR [FRETE_VALOR]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS_ITENS] ADD  CONSTRAINT [DF_COMPRA_PEDIDOS_ITENS_QTDE_PEDIDA]  DEFAULT ((0)) FOR [QTDE_PEDIDA]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS_ITENS] ADD  CONSTRAINT [DF_COMPRA_PEDIDOS_ITENS_QTDE_ENTREGUE]  DEFAULT ((0)) FOR [QTDE_ENTREGUE]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS_ITENS] ADD  CONSTRAINT [DF_COMPRA_PEDIDOS_ITENS_VALOR_UNIT]  DEFAULT ((0)) FOR [VALOR_UNIT]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS_ITENS] ADD  CONSTRAINT [DF_COMPRA_PEDIDOS_ITENS_VALOR_TOTAL]  DEFAULT ((0)) FOR [VALOR_TOTAL]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS_ITENS] ADD  CONSTRAINT [DF_COMPRA_PEDIDOS_ITENS_DESCONTO]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS_ITENS] ADD  CONSTRAINT [DF_COMPRA_PEDIDOS_ITENS_VLR_DESCONTO]  DEFAULT ((0)) FOR [VLR_DESCONTO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF_COMPRAS_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF_COMPRAS_MODELO]  DEFAULT ('') FOR [MODELO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF_COMPRAS_SERIE]  DEFAULT ('') FOR [SERIE]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__FORNECE__39788055]  DEFAULT ((0)) FOR [FORNECEDOR]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ICMS_BA__3A6CA48E]  DEFAULT ((0)) FOR [ICMS_BASECALCULO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ICMS_VA__3B60C8C7]  DEFAULT ((0)) FOR [ICMS_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ICMS_BA__3C54ED00]  DEFAULT ((0)) FOR [ICMS_BASECALCULO_SUBSTITUICAO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ICMS_VA__3D491139]  DEFAULT ((0)) FOR [ICMS_VALOR_SUBSTITUICAO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ICMS_RE__3E3D3572]  DEFAULT ((0)) FOR [ICMS_REDUCAO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ICMS_RE__3F3159AB]  DEFAULT ((0)) FOR [ICMS_REDUCAO_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__IPI_BAS__40257DE4]  DEFAULT ((0)) FOR [IPI_BASECALCULO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__IPI_VAL__4119A21D]  DEFAULT ((0)) FOR [IPI_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ISS__420DC656]  DEFAULT ((0)) FOR [ISS]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ISS_BAS__4301EA8F]  DEFAULT ((0)) FOR [ISS_BASECALCULO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__ISS_VAL__43F60EC8]  DEFAULT ((0)) FOR [ISS_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__PFRETE__44EA3301]  DEFAULT ((0)) FOR [PFRETE]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__PFRETE___45DE573A]  DEFAULT ((0)) FOR [PFRETE_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__VLR_SEG__46D27B73]  DEFAULT ((0)) FOR [VLR_SEGURO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__VLR_DES__47C69FAC]  DEFAULT ((0)) FOR [VLR_DESPESAS_ASSESSORIAS]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__DESCONT__48BAC3E5]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__VLR_DES__49AEE81E]  DEFAULT ((0)) FOR [VLR_DESCONTO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__VLR_REC__4AA30C57]  DEFAULT ((0)) FOR [VLR_RECEBIDO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__TROCO__4B973090]  DEFAULT ((0)) FOR [TROCO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__VLR_CAI__4C8B54C9]  DEFAULT ((0)) FOR [VLR_CAIXA]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__FRETE_Q__4D7F7902]  DEFAULT ((0)) FOR [FRETE_QUANTIDADE]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__FRETE_P__4E739D3B]  DEFAULT ((0)) FOR [FRETE_PBRUTO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__FRETE_P__4F67C174]  DEFAULT ((0)) FOR [FRETE_PLIQUIDO]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__QTDE_PR__505BE5AD]  DEFAULT ((0)) FOR [QTDE_PRODUTOS]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__VALOR_P__515009E6]  DEFAULT ((0)) FOR [VALOR_PRODUTOS]
GO
ALTER TABLE [dbo].[COMPRAS] ADD  CONSTRAINT [DF__COMPRAS__TOTAL_N__52442E1F]  DEFAULT ((0)) FOR [TOTAL_NF]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__CODIG__08A03ED0]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_IT__ICMS__09946309]  DEFAULT ((0)) FOR [ICMS]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__ICMS___0A888742]  DEFAULT ((0)) FOR [ICMS_BASECALCULO]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__ICMS___0B7CAB7B]  DEFAULT ((0)) FOR [ICMS_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__ICMS___0C70CFB4]  DEFAULT ((0)) FOR [ICMS_REDUCAO]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__ICMS___0D64F3ED]  DEFAULT ((0)) FOR [ICMS_REDUCAO_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_ITE__IPI__0E591826]  DEFAULT ((0)) FOR [IPI]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__IPI_B__0F4D3C5F]  DEFAULT ((0)) FOR [IPI_BASECALCULO]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__IPI_V__10416098]  DEFAULT ((0)) FOR [IPI_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__VLR_D__113584D1]  DEFAULT ((0)) FOR [VLR_DESPESAS_ASSESSORIAS]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__QUANT__1229A90A]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__VL_UN__131DCD43]  DEFAULT ((0)) FOR [VL_UNITARIO]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__DESCO__1411F17C]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__DESCO__150615B5]  DEFAULT ((0)) FOR [DESCONTO_VLR]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__MARKU__15FA39EE]  DEFAULT ((0)) FOR [MARKUP]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__MG_LU__16EE5E27]  DEFAULT ((0)) FOR [MG_LUCRO]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__PRC_V__17E28260]  DEFAULT ((0)) FOR [PRC_VENDA]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__PFRET__18D6A699]  DEFAULT ((0)) FOR [PFRETE]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__PFRET__19CACAD2]  DEFAULT ((0)) FOR [PFRETE_VALOR]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] ADD  CONSTRAINT [DF__COMPRAS_I__VL_TO__1ABEEF0B]  DEFAULT ((0)) FOR [VL_TOTAL]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS_GRADES] ADD  CONSTRAINT [DF_COMPRAS_ITENS_GRADES_QUANTIDADE]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[COMPRAS_REQUISICAO] ADD  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[COMPRAS_REQUISICAO] ADD  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[COMPRAS_REQUISICAOITENS] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[COMPRAS_REQUISICAOITENS] ADD  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[COMPRAS_REQUISICAOITENS] ADD  DEFAULT ((0)) FOR [VL_UNITARIO]
GO
ALTER TABLE [dbo].[COMPRAS_REQUISICAOITENS] ADD  DEFAULT ((0)) FOR [VL_TOTAL]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_LAYOUTS_TIPOCODIGOBARRA]  DEFAULT ('bcCode39') FOR [TIPOCODIGOBARRA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__PG_LA__25A691D2]  DEFAULT ((0)) FOR [PG_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_LAYOUTS_PG_LARGURAINFINITA]  DEFAULT ('False') FOR [PG_LARGURAINFINITA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__PG_CO__269AB60B]  DEFAULT ((0)) FOR [PG_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_LAYOUTS_PG_COMPRIMENTOINFINITO]  DEFAULT ('False') FOR [PG_COMPRIMENTOINFINITO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__MG_TO__278EDA44]  DEFAULT ((0)) FOR [MG_TOPO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__MG_RO__2882FE7D]  DEFAULT ((0)) FOR [MG_RODAPE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__MG_ES__297722B6]  DEFAULT ((0)) FOR [MG_ESQUERDA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__MG_DI__2A6B46EF]  DEFAULT ((0)) FOR [MG_DIREITA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__FNT_T__2B5F6B28]  DEFAULT ((0)) FOR [FNT_TAMANHO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__COL_Q__2C538F61]  DEFAULT ((0)) FOR [COL_QUANTIDADES]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__COL_L__2D47B39A]  DEFAULT ((0)) FOR [COL_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__COL_C__2E3BD7D3]  DEFAULT ((0)) FOR [COL_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__COL_D__2F2FFC0C]  DEFAULT ((0)) FOR [COL_DISTANCIA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__CB_LA__30242045]  DEFAULT ((0)) FOR [CB_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__CB_CO__3118447E]  DEFAULT ((0)) FOR [CB_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__CB_CO__320C68B7]  DEFAULT ((0)) FOR [CB_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__CB_LI__33008CF0]  DEFAULT ((0)) FOR [CB_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__DSC_L__33F4B129]  DEFAULT ((0)) FOR [DSC_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__DSC_C__34E8D562]  DEFAULT ((0)) FOR [DSC_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__DSC_C__35DCF99B]  DEFAULT ((0)) FOR [DSC_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__DSC_L__36D11DD4]  DEFAULT ((0)) FOR [DSC_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__FRN_L__37C5420D]  DEFAULT ((0)) FOR [FRN_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__FRN_C__38B96646]  DEFAULT ((0)) FOR [FRN_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__FRN_C__39AD8A7F]  DEFAULT ((0)) FOR [FRN_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__FRN_L__3AA1AEB8]  DEFAULT ((0)) FOR [FRN_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__PRD_L__3B95D2F1]  DEFAULT ((0)) FOR [PRD_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__PRD_C__3C89F72A]  DEFAULT ((0)) FOR [PRD_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__PRD_C__3D7E1B63]  DEFAULT ((0)) FOR [PRD_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__PRD_L__3E723F9C]  DEFAULT ((0)) FOR [PRD_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__UND_L__3F6663D5]  DEFAULT ((0)) FOR [UND_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__UND_C__405A880E]  DEFAULT ((0)) FOR [UND_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__UND_C__414EAC47]  DEFAULT ((0)) FOR [UND_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__UND_L__4242D080]  DEFAULT ((0)) FOR [UND_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__TAM_L__4336F4B9]  DEFAULT ((0)) FOR [TAM_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__TAM_C__442B18F2]  DEFAULT ((0)) FOR [TAM_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__TAM_C__451F3D2B]  DEFAULT ((0)) FOR [TAM_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__TAM_L__46136164]  DEFAULT ((0)) FOR [TAM_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__VLR_L__4707859D]  DEFAULT ((0)) FOR [VLR_LARGURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__VLR_C__47FBA9D6]  DEFAULT ((0)) FOR [VLR_COMPRIMENTO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__VLR_C__48EFCE0F]  DEFAULT ((0)) FOR [VLR_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_LAYOUTS] ADD  CONSTRAINT [DF__CONFIG_ET__VLR_L__49E3F248]  DEFAULT ((0)) FOR [VLR_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_DRIVER]  DEFAULT ('etqPpla') FOR [DRIVER]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_AVANCOPAPEL]  DEFAULT ((600)) FOR [AVANCOPAPEL]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_CODBARRAS_TIPO]  DEFAULT ('E') FOR [CODBARRAS_TIPO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_CODBARRAS_ALTURA]  DEFAULT ((50)) FOR [CODBARRAS_ALTURA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_DESCRICAO_IMPRIMIR]  DEFAULT ('S') FOR [L_DESCRICAO_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_DESCRICAO_COLUNA]  DEFAULT ((70)) FOR [L_DESCRICAO_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_DESCRICAO_LINHA]  DEFAULT ((400)) FOR [L_DESCRICAO_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_DESCRICAO_FONTE]  DEFAULT ((1)) FOR [L_DESCRICAO_FONTE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_CODBARRAS_IMPRIMIR]  DEFAULT ('S') FOR [L_CODBARRAS_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_CODBARRAS_EXIBECODIGO]  DEFAULT ('S') FOR [L_CODBARRAS_EXIBECODIGO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_CODBARRAS_LINHA]  DEFAULT ((240)) FOR [L_CODBARRAS_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_CODBARRAS_COLUNA]  DEFAULT ((70)) FOR [L_CODBARRAS_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_CODIGO_IMPRIMIR]  DEFAULT ('S') FOR [L_CODIGO_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_CODIGO_COLUNA]  DEFAULT ((70)) FOR [L_CODIGO_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_COR_IMPRIMIR]  DEFAULT ('S') FOR [L_COR_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_COR_COLUNA]  DEFAULT ((70)) FOR [L_COR_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_COR_LINHA]  DEFAULT ((360)) FOR [L_COR_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_COR_FONTE]  DEFAULT ((1)) FOR [L_COR_FONTE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_TAMANHO_IMPRIMIR]  DEFAULT ('S') FOR [L_TAMANHO_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_TAMANHO_COLUNA]  DEFAULT ((70)) FOR [L_TAMANHO_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_TAMANHO_FONTE]  DEFAULT ((1)) FOR [L_TAMANHO_FONTE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_PRECO_IMPRIMIR]  DEFAULT ('S') FOR [L_PRECO_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_PRECO_COLUNA]  DEFAULT ((70)) FOR [L_PRECO_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_L_PRECO_FONTE]  DEFAULT ((1)) FOR [L_PRECO_FONTE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_DESCRICAO_IMPRIMIR]  DEFAULT ('S') FOR [R_DESCRICAO_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_DESCRICAO_COLUNA]  DEFAULT ((495)) FOR [R_DESCRICAO_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_DESCRICAO_LINHA]  DEFAULT ((400)) FOR [R_DESCRICAO_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_DESCRICAO_FONTE]  DEFAULT ((1)) FOR [R_DESCRICAO_FONTE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_CODBARRAS_IMPRIMIR]  DEFAULT ('S') FOR [R_CODBARRAS_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_CODBARRAS_EXIBECODIGO]  DEFAULT ('S') FOR [R_CODBARRAS_EXIBECODIGO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_CODBARRAS_LINHA]  DEFAULT ((240)) FOR [R_CODBARRAS_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_CODBARRAS_COLUNA]  DEFAULT ((495)) FOR [R_CODBARRAS_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_CODIGO_IMPRIMIR]  DEFAULT ('S') FOR [R_CODIGO_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_CODIGO_COLUNA]  DEFAULT ((495)) FOR [R_CODIGO_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_COR_IMPRIMIR]  DEFAULT ('S') FOR [R_COR_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_COR_COLUNA]  DEFAULT ((495)) FOR [R_COR_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_COR_LINHA]  DEFAULT ((360)) FOR [R_COR_LINHA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_COR_FONTE]  DEFAULT ((1)) FOR [R_COR_FONTE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_TAMANHO_IMPRIMIR]  DEFAULT ('S') FOR [R_TAMANHO_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_TAMANHO_COLUNA]  DEFAULT ((495)) FOR [R_TAMANHO_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_TAMANHO_FONTE]  DEFAULT ((1)) FOR [R_TAMANHO_FONTE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_PRECO_IMPRIMIR]  DEFAULT ('S') FOR [R_PRECO_IMPRIMIR]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_PRECO_COLUNA]  DEFAULT ((495)) FOR [R_PRECO_COLUNA]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS_PRODUTOS] ADD  CONSTRAINT [DF_CONFIG_ETIQUETAS_PRODUTOS_R_PRECO_FONTE]  DEFAULT ((1)) FOR [R_PRECO_FONTE]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS01_TEMP] ADD  CONSTRAINT [DF__CONFIG_ET__PRECO__1352D76D]  DEFAULT ((0)) FOR [PRECO]
GO
ALTER TABLE [dbo].[CONFIG_ETIQUETAS01_TEMP] ADD  CONSTRAINT [DF__CONFIG_ET__QUANT__1446FBA6]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[CONFIG_PAF_PDV] ADD  DEFAULT ((0)) FOR [PORTACOM]
GO
ALTER TABLE [dbo].[CONFIG_PAF_PDV] ADD  DEFAULT ((0)) FOR [ICMS_ALIQ]
GO
ALTER TABLE [dbo].[CONFIG_PAF_PDV] ADD  DEFAULT ((0)) FOR [IPI_ALIQ]
GO
ALTER TABLE [dbo].[CONFIG_PAF_PDV] ADD  DEFAULT ((0)) FOR [ISS_ALIQ]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF_CONFIG_PARAMETROS_EMPRESA_CODIGOPAIS]  DEFAULT ((1058)) FOR [EMPRESA_CODIGOPAIS]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF_CONFIG_PARAMETROS_EMPRESA_NOMEPAIS]  DEFAULT ('BRASIL') FOR [EMPRESA_NOMEPAIS]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF_CONFIG_PARAMETROS_EMPRESA_SIMPLESNACIONAL]  DEFAULT ((1)) FOR [EMPRESA_REGIMETRIBUTARIO]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF_CONFIG_PARAMETROS_PRODUTO_NCM]  DEFAULT ((14122440)) FOR [PRODUTO_NCM]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF__CONFIG_PA__FINAN__473C8FC7]  DEFAULT ((0)) FOR [FINANCEIRO_JUROS]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF__CONFIG_PA__FINAN__4830B400]  DEFAULT ((0)) FOR [FINANCEIRO_CARTORIO]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF__CONFIG_PA__FINAN__39237A9A]  DEFAULT ('N') FOR [FINANCEIRO_VENDAVISTABAIXAR]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF_CONFIG_PARAMETROS_FINANCEIRO_RECEBER_CONTACAIXA]  DEFAULT ((0)) FOR [FINANCEIRO_RECEBER_CONTACAIXA]
GO
ALTER TABLE [dbo].[CONFIG_PARAMETROS] ADD  CONSTRAINT [DF_CONFIG_PARAMETROS_FRETEPADRAO]  DEFAULT ((0)) FOR [FRETEPADRAO]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO] ADD  CONSTRAINT [DF_CTRL_BANCARIO_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO] ADD  CONSTRAINT [DF__CTRL_BANCAR__MES__04CFADEC]  DEFAULT ((0)) FOR [MES]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO] ADD  CONSTRAINT [DF__CTRL_BANCAR__ANO__05C3D225]  DEFAULT ((0)) FOR [ANO]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO] ADD  CONSTRAINT [DF__CTRL_BANC__VLR_C__06B7F65E]  DEFAULT ((0)) FOR [VLR_CREDITO]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO] ADD  CONSTRAINT [DF__CTRL_BANC__VLR_D__07AC1A97]  DEFAULT ((0)) FOR [VLR_DEBITO]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO_SALDO] ADD  DEFAULT ((0)) FOR [CREDITO]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO_SALDO] ADD  DEFAULT ((0)) FOR [DEBITO]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO_SALDO] ADD  DEFAULT ((0)) FOR [SALDO]
GO
ALTER TABLE [dbo].[CTRL_CAIXA] ADD  CONSTRAINT [DF_CTRL_CAIXA_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[CTRL_CAIXA] ADD  CONSTRAINT [DF_CTRL_CAIXA_CONTACAIXA]  DEFAULT ((0)) FOR [CONTACAIXA]
GO
ALTER TABLE [dbo].[CTRL_CAIXA] ADD  CONSTRAINT [DF__CTRL_CAIX__PLN_C__76EBA2E9]  DEFAULT ('') FOR [PLN_CONTA]
GO
ALTER TABLE [dbo].[CTRL_CAIXA] ADD  CONSTRAINT [DF__CTRL_CAIX__VLR_C__77DFC722]  DEFAULT ((0)) FOR [VLR_CREDITO]
GO
ALTER TABLE [dbo].[CTRL_CAIXA] ADD  CONSTRAINT [DF__CTRL_CAIX__VLR_D__78D3EB5B]  DEFAULT ((0)) FOR [VLR_DEBITO]
GO
ALTER TABLE [dbo].[CTRL_CAIXA_SALDO] ADD  DEFAULT ((0)) FOR [CREDITO]
GO
ALTER TABLE [dbo].[CTRL_CAIXA_SALDO] ADD  DEFAULT ((0)) FOR [DEBITO]
GO
ALTER TABLE [dbo].[CTRL_CAIXA_SALDO] ADD  DEFAULT ((0)) FOR [SALDO]
GO
ALTER TABLE [dbo].[CTRL_NFS_CAMPOS] ADD  DEFAULT ((0)) FOR [CARACTERES]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA] ADD  DEFAULT ((0)) FOR [PEDIDO]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA] ADD  DEFAULT ((0)) FOR [NR_PEDIDO]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA] ADD  DEFAULT ((0)) FOR [QTDE_TOTAL]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA] ADD  DEFAULT ((0)) FOR [VALOR_TOTAL]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA] ADD  DEFAULT ((0)) FOR [VOLUMES]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA_ITENS] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA_ITENS] ADD  DEFAULT ((0)) FOR [PEDIDO]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA_ITENS] ADD  DEFAULT ((0)) FOR [QTDE_TOTAL]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA_ITENS] ADD  DEFAULT ((0)) FOR [VALOR_TOTAL]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [PAGINA_C]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [PAGINA_L]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [COLUNA_COMPRIMENTO]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [COLUNAS_ESPACOS]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [LINHAS_ESPACOS]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [MARGEM_TOPO]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [MARGEM_RODAPE]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [MARGEM_ESQUERDA]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [MARGEM_DIREITA]
GO
ALTER TABLE [dbo].[EXPEDICAO_ETIQUETAS] ADD  DEFAULT ((0)) FOR [FONTE_TAMANHO]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE] ADD  DEFAULT ((0)) FOR [PEDIDO]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE] ADD  DEFAULT ('0') FOR [SEQUENCIA]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE] ADD  DEFAULT ((0)) FOR [QTDE_TOTAL]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE] ADD  DEFAULT ((0)) FOR [VALOR_TOTAL]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE_ITENS] ADD  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE_ITENS] ADD  DEFAULT ((0)) FOR [PEDIDO]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE_ITENS] ADD  DEFAULT ((0)) FOR [COR]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE_ITENS] ADD  DEFAULT ((0)) FOR [TAMANHO]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE_ITENS] ADD  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE_ITENS] ADD  DEFAULT ((0)) FOR [VALOR_TOTAL]
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE_ITENS] ADD  DEFAULT ((0)) FOR [QTDE_TOTAL]
GO
ALTER TABLE [dbo].[FIN_BORDERO] ADD  CONSTRAINT [DF_FIN_BORDERO_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[FIN_COBRANCA_AGENDAR] ADD  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[FIN_COBRANCA_CARTAEMISSAO] ADD  DEFAULT ((0)) FOR [CARTA]
GO
ALTER TABLE [dbo].[FIN_COMISSOES] ADD  CONSTRAINT [DF_FIN_COMISSOES_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[FIN_COMISSOES] ADD  CONSTRAINT [DF_FIN_COMISSOES_DC]  DEFAULT ('CREDITO') FOR [DC]
GO
ALTER TABLE [dbo].[FIN_CONTA_CORRENTE] ADD  CONSTRAINT [DF_FIN_CONTA_CORRENTE_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[FIN_CONTA_CORRENTE] ADD  CONSTRAINT [DF_FIN_CONTA_CORRENTE_SALDOINICIAL]  DEFAULT ((0)) FOR [SALDOINICIAL]
GO
ALTER TABLE [dbo].[FIN_CONTA_CORRENTE] ADD  CONSTRAINT [DF__FIN_CONTA__SALDO__5555A4F4]  DEFAULT ((0)) FOR [SALDO]
GO
ALTER TABLE [dbo].[FIN_COTACAOMOEDA] ADD  CONSTRAINT [DF_FIN_COTACAOMOEDA_ATUALIZACAO]  DEFAULT (getdate()) FOR [ATUALIZACAO]
GO
ALTER TABLE [dbo].[FIN_COTACAOMOEDA] ADD  CONSTRAINT [DF_FIN_COTACAOMOEDA_FONTE]  DEFAULT ('BANCO CENTRAL') FOR [FONTE]
GO
ALTER TABLE [dbo].[FIN_COTACAOMOEDA] ADD  CONSTRAINT [DF__FIN_COTAC__COTAC__4CC05EF3]  DEFAULT ((0)) FOR [DOLAR]
GO
ALTER TABLE [dbo].[FIN_COTACAOMOEDA] ADD  CONSTRAINT [DF_FIN_COTACAOMOEDA_EURO]  DEFAULT ((0)) FOR [EURO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__FORNE__58F12BAE]  DEFAULT ((0)) FOR [FORNECEDOR]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__NOTAF__59E54FE7]  DEFAULT ((0)) FOR [NOTAFISCAL]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_REMESSA]  DEFAULT ((0)) FOR [REMESSA]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPAG__TIPO__5AD97420]  DEFAULT ('PAGAR') FOR [TIPO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__VALOR__5BCD9859]  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__VALOR__5CC1BC92]  DEFAULT ((0)) FOR [VALOR_PAGO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__VALOR__5DB5E0CB]  DEFAULT ((0)) FOR [VALOR_SALDO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__DESCO__5EAA0504]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_DESCONTOVALOR]  DEFAULT ((0)) FOR [DESCONTOVALOR]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_CONTACAIXA]  DEFAULT ((0)) FOR [CONTACAIXA]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__DESPE__5F9E293D]  DEFAULT ((0)) FOR [DESPESAS_BOLETO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__DESPE__60924D76]  DEFAULT ((0)) FOR [DESPESAS_JUROS]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_DESPESAS_JUROSVALOR]  DEFAULT ((0)) FOR [DESPESAS_JUROSVALOR]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__DESPE__618671AF]  DEFAULT ((0)) FOR [DESPESAS_MULTA]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__DESPE__627A95E8]  DEFAULT ((0)) FOR [DESPESAS_CARTORIO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF__FIN_CTAPA__DESPE__636EBA21]  DEFAULT ((0)) FOR [DESPESAS_TOTAL]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_COMPLEMENTAR]  DEFAULT ('N') FOR [COMPLEMENTAR]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_CHECADO]  DEFAULT ('N') FOR [CHECADO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_PAGTOTERCEIRIZADO]  DEFAULT ('N') FOR [PAGTOTERCEIRIZADO]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] ADD  CONSTRAINT [DF_FIN_CTAPAGAR_PROTESTOSTATUS]  DEFAULT ('NAO') FOR [PROTESTOSTATUS]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR_SALDO] ADD  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF_FIN_CTARECEBER_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__CLIEN__48BAC3E5]  DEFAULT ((0)) FOR [CLIENTE]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__NOTAF__49AEE81E]  DEFAULT ((0)) FOR [NOTAFISCAL]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTAREC__TIPO__4AA30C57]  DEFAULT ('RECEBER') FOR [TIPO]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__VALOR__4B973090]  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__VALOR__4C8B54C9]  DEFAULT ((0)) FOR [VALOR_PAGO]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__VALOR__4D7F7902]  DEFAULT ((0)) FOR [VALOR_SALDO]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__DESCO__4E739D3B]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF_FIN_CTARECEBER_DESCONTOVALOR]  DEFAULT ((0)) FOR [DESCONTOVALOR]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__ENTRA__4F67C174]  DEFAULT ((0)) FOR [ENTRADA]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF_FIN_CTARECEBER_CONTACAIXA]  DEFAULT ((0)) FOR [CONTACAIXA]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF_FIN_CTARECEBER_GERARCOMPLEMENTO]  DEFAULT ('N') FOR [GERARCOMPLEMENTO]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF_FIN_CTARECEBER_REMESSA]  DEFAULT ('N') FOR [GERARREMESSA]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__DESPE__505BE5AD]  DEFAULT ((0)) FOR [DESPESAS_BOLETO]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__DESPE__515009E6]  DEFAULT ((0)) FOR [DESPESAS_JUROS]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF_FIN_CTARECEBER_DESPESAS_JUROSVALOR]  DEFAULT ((0)) FOR [DESPESAS_JUROSVALOR]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__DESPE__52442E1F]  DEFAULT ((0)) FOR [DESPESAS_MULTA]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__DESPE__53385258]  DEFAULT ((0)) FOR [DESPESAS_CARTORIO]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF__FIN_CTARE__DESPE__542C7691]  DEFAULT ((0)) FOR [DESPESAS_TOTAL]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF_FIN_CTARECEBER_COMPLEMENTAR]  DEFAULT ('N') FOR [COMPLEMENTAR]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] ADD  CONSTRAINT [DF_FIN_CTARECEBER_PROTESTOSTATUS]  DEFAULT ('NAO') FOR [PROTESTOSTATUS]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER_SALDO] ADD  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[FIN_RECIBO] ADD  CONSTRAINT [DF_FIN_RECIBO_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[FIN_RECIBO] ADD  CONSTRAINT [DF__FIN_RECIB__VALOR__220B0B18]  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_TERMINAL]  DEFAULT ((1)) FOR [TERMINAL]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_DATAH_ABERTURA]  DEFAULT (getdate()) FOR [DATA_ABERTURA]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_CAIXAABERTO]  DEFAULT ('N') FOR [CAIXAABERTO]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_CAIXAFECHADO]  DEFAULT ('N') FOR [CAIXAFECHADO]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_VLR_ENTRADAS]  DEFAULT ((0)) FOR [VLR_ENTRADAS]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_VLR_SAIDAS]  DEFAULT ((0)) FOR [VLR_SAIDAS]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_VLR_ABERTURACAIXA]  DEFAULT ((0)) FOR [VLR_ABERTURACAIXA]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOS] ADD  CONSTRAINT [DF_FIN_REGISTROSDIARIOS_VLR_FECHAMENTOCAIXA]  DEFAULT ((0)) FOR [VLR_FECHAMENTOCAIXA]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOSDETALHES] ADD  CONSTRAINT [DF__FIN_REGIS__VALOR__55F58EC9]  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[FIN_TRANSFERENCIAS] ADD  CONSTRAINT [DF_FIN_TRANSFERENCIAS_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[FIN_TRANSFERENCIAS] ADD  CONSTRAINT [DF_FIN_TRANSFERENCIAS_VALOR]  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[FIN_TRANSFERENCIAS] ADD  CONSTRAINT [DF_FIN_TRANSFERENCIAS_EFETIVADO]  DEFAULT ('N') FOR [EFETIVADO]
GO
ALTER TABLE [dbo].[MOVIMENTOS_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTO_QTDE_VENDIDO]  DEFAULT ((0)) FOR [QTDE_VENDIDO]
GO
ALTER TABLE [dbo].[MOVIMENTOS_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTO_QTDE_PRODUZIR_DEMANDA]  DEFAULT ((0)) FOR [QTDE_DEMANDA]
GO
ALTER TABLE [dbo].[MOVIMENTOS_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTO_QTDE_PRODUZIR]  DEFAULT ((0)) FOR [QTDE_PRODUZIR]
GO
ALTER TABLE [dbo].[MOVIMENTOS_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTO_QTDE_PRODUZIDO]  DEFAULT ((0)) FOR [QTDE_PRODUZIDO]
GO
ALTER TABLE [dbo].[MOVIMENTOS_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTO_QTDE_PRODUZINDO]  DEFAULT ((0)) FOR [QTDE_PRODUZINDO]
GO
ALTER TABLE [dbo].[MOVIMENTOS_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTO_QTDE_ESTOQUEREAL]  DEFAULT ((0)) FOR [QTDE_FISICO]
GO
ALTER TABLE [dbo].[MOVIMENTOS_PRODUTOS] ADD  CONSTRAINT [DF_CAD_PRODUTOS_MOVIMENTO_QTDE_ESTOQUE]  DEFAULT ((0)) FOR [QTDE_ESTOQUE]
GO
ALTER TABLE [dbo].[PCP_CUSTOS] ADD  CONSTRAINT [DF_PCP_CUSTOS_NOME]  DEFAULT ('') FOR [NOME]
GO
ALTER TABLE [dbo].[PCP_CUSTOS] ADD  CONSTRAINT [DF__PCP_CUSTO__VALOR__4BCC3ABA]  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_DISTRIBUIR_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_ORDEMPRODUCAO]  DEFAULT ((0)) FOR [ORDEMPRODUCAO]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_DATA]  DEFAULT (getdate()) FOR [DATA]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_DATARETORNO]  DEFAULT (getdate()) FOR [DATARETORNO]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_TERCEIRIZADO]  DEFAULT ((0)) FOR [TERCEIRIZADO]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_FASE]  DEFAULT ((0)) FOR [FASE]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_TERCEIRIZADOORIGEM]  DEFAULT ((0)) FOR [TERCEIRIZADOORIGEM]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_DATARETORNOORIGEM]  DEFAULT (getdate()) FOR [DATARETORNOORIGEM]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_FASEORIGEM]  DEFAULT ((0)) FOR [FASEORIGEM]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_DISTRIBUIR_QTDE_REMESSA]  DEFAULT ((0)) FOR [QTDE_ENVIADA]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_DISTRIBUIR_QTDE_RETORNO]  DEFAULT ((0)) FOR [QTDE_RETORNADA]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_DISTRIBUIR_QTDE_RESTANTE]  DEFAULT ((0)) FOR [QTDE_PERDAS]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_QTDE_DEFEITOS]  DEFAULT ((0)) FOR [QTDE_DEFEITOS]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_VLR_PAGAR]  DEFAULT ((0)) FOR [VLR_UNITARIO]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_ENCERRADO]  DEFAULT ('N') FOR [ENCERRADO]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA] ADD  CONSTRAINT [DF_PCP_DISTRIBUIR_GEROUPAGAMENTO]  DEFAULT ('N') FOR [GEROUPAGAMENTO]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS] ADD  CONSTRAINT [DF_PCP_DISTRIBUIR_REFERENCIAS_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_REFERENCIAS_ENCERRADO]  DEFAULT ('N') FOR [FASECONCLUIDA]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS] ADD  CONSTRAINT [DF_PCP_DISTRIBUIR_REFERENCIAS_VLR_UNIT]  DEFAULT ((0)) FOR [VLR_UNIT]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_REFERENCIAS_GEROUPAGAMENTO]  DEFAULT ('N') FOR [GEROUPAGAMENTO]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS] ADD  CONSTRAINT [DF_PCP_FASETRANSFERENCIA_REFERENCIAS_ENCERRADO_1]  DEFAULT ('N') FOR [ENCERRADO]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA] ADD  CONSTRAINT [DF__PCP_MATERI__QTDE__0169315C]  DEFAULT ((0)) FOR [QTDE]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA] ADD  CONSTRAINT [DF__PCP_MATER__VLR_U__025D5595]  DEFAULT ((0)) FOR [VLR_UNIT]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA] ADD  CONSTRAINT [DF__PCP_MATER__VLR_T__035179CE]  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOS] ADD  CONSTRAINT [DF__PCP_MATER__QTDE___7E8CC4B1]  DEFAULT ((0)) FOR [QTDE_METROS]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOS] ADD  CONSTRAINT [DF__PCP_MATER__VLR_U__7F80E8EA]  DEFAULT ((0)) FOR [VLR_UNIT]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOS] ADD  CONSTRAINT [DF__PCP_MATER__VLR_T__00750D23]  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[PCP_MEDIDAS] ADD  DEFAULT ((0)) FOR [MEDIDA]
GO
ALTER TABLE [dbo].[PCP_MEDIDAS_APOS_LAVAR] ADD  DEFAULT ((0)) FOR [MEDIDA]
GO
ALTER TABLE [dbo].[PCP_ORDEMCORTEPARAMETRO] ADD  DEFAULT ((0)) FOR [MESA_CORTE_COMPRIMENTO]
GO
ALTER TABLE [dbo].[PCP_ORDEMCORTEPARAMETRO] ADD  DEFAULT ((0)) FOR [MESA_CORTE_LARGURA]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAO_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAO_AUTORIZADO]  DEFAULT ('N') FOR [APROVADO]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAO_DATA]  DEFAULT (getdate()) FOR [DATA]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAO_LOTE]  DEFAULT ((0)) FOR [LOTE]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO] ADD  CONSTRAINT [DF__PCP_ORDEM__QTDE___2F2FFC0C]  DEFAULT ((0)) FOR [QTDE_TOTAL]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO] ADD  CONSTRAINT [DF__PCP_ORDEM__QTDE___30242045]  DEFAULT ((0)) FOR [QTDE_PRODUZIDA]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO] ADD  CONSTRAINT [DF__PCP_ORDEM__QTDE___3118447E]  DEFAULT ((0)) FOR [QTDE_RESTANTE]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO] ADD  CONSTRAINT [DF__PCP_ORDEM__PERCE__320C68B7]  DEFAULT ((0)) FOR [PERCENTUAL]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ANDAMENTO] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAO_ANDAMENTO_IDENTIFICADOR]  DEFAULT ('') FOR [IDENTIFICADOR]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ANDAMENTO] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAOFASEREFERENCIAS_SOBRA]  DEFAULT ('N') FOR [SOBRA]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAO_ITENS_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS] ADD  CONSTRAINT [DF__PCP_ORDEM__CODIG__316D4A39]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS] ADD  CONSTRAINT [DF__PCP_ORDEM__QUANT__32616E72]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS] ADD  CONSTRAINT [DF__PCP_ORDEM__QTDE___335592AB]  DEFAULT ((0)) FOR [QTDEPRODUZIDA]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS] ADD  CONSTRAINT [DF__PCP_ORDEM__TEMPO__3449B6E4]  DEFAULT ((0)) FOR [TEMPOPRODUCAO]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS_GRADE] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAO_ITENS_GRADE_IDENTIFICADOR]  DEFAULT ('') FOR [IDENTIFICADOR]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_MOVIMENTO] ADD  CONSTRAINT [DF_PCP_ORDEMPRODUCAO_MOVIMENTO_CUSTO]  DEFAULT ((0)) FOR [VLR_CUSTO]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PERDAS] ADD  CONSTRAINT [DF_PCP_PERDAS_PRODUCAO_DATAREGISTRO]  DEFAULT (getdate()) FOR [DATAREGISTRO]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT (getdate()) FOR [DATAATUALIZACAO]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ('') FOR [REFERENCIA]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ('') FOR [IDENTIFICADOR]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ((0)) FOR [COR_ID]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ('') FOR [COR]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ((0)) FOR [TAMANHO_ID]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ('') FOR [TAMANHO]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ((0)) FOR [CELULA_COL]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ((0)) FOR [COLUNA_ROW]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ((0)) FOR [QUALIDADE]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PRODUZIDOS] ADD  DEFAULT ('N') FOR [BAIXADO]
GO
ALTER TABLE [dbo].[PCP_PROCESSOS] ADD  CONSTRAINT [DF__PCP_PROCE__CODIG__1F2E9E6D]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[PCP_PROCESSOS] ADD  CONSTRAINT [DF__PCP_PROCE__ID_PR__2022C2A6]  DEFAULT ((0)) FOR [ID_PROCESSO]
GO
ALTER TABLE [dbo].[PCP_PROCESSOS] ADD  CONSTRAINT [DF__PCP_PROCE__CUSTO__2116E6DF]  DEFAULT ((0)) FOR [CUSTOS]
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA] ADD  CONSTRAINT [DF_PEDIDOCONFERENCIA_NOTAFISCAL]  DEFAULT ((0)) FOR [NOTAFISCAL]
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA] ADD  CONSTRAINT [DF_PEDIDOCONFERENCIA_QTDE_TOTAL]  DEFAULT ((0)) FOR [QTDE_TOTAL]
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA] ADD  CONSTRAINT [DF_PEDIDOCONFERENCIA_VLR_TOTAL]  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA] ADD  CONSTRAINT [DF_PEDIDOCONFERENCIA_VLR_DESCONTOPEDIDO]  DEFAULT ((0)) FOR [VLR_DESCONTOPEDIDO]
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA] ADD  CONSTRAINT [DF_PEDIDOCONFERENCIA_VOLUMES]  DEFAULT ((0)) FOR [FRETE_VOLUMES]
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA_ITENS] ADD  CONSTRAINT [DF_PEDIDOCONFERENCIA_ITENS_QUANTIDADE]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA_ITENS] ADD  CONSTRAINT [DF_PEDIDOCONFERENCIA_ITENS_VALOR_UNIT]  DEFAULT ((0)) FOR [VALOR_UNIT]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF_PEDIDOS_EMPRESA]  DEFAULT ((1)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__CLIENTE__1A34DF26]  DEFAULT ((0)) FOR [CLIENTE]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__VENDEDO__1B29035F]  DEFAULT ((0)) FOR [VENDEDOR]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__TABELA__1C1D2798]  DEFAULT ((0)) FOR [TABELA]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__FORMAPA__1D114BD1]  DEFAULT ((0)) FOR [FORMAPAGTO]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__TRANSPO__1E05700A]  DEFAULT ((0)) FOR [TRANSPORTADORA]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF_PEDIDOS_APROVADO]  DEFAULT ('N') FOR [APROVADO]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF_PEDIDOS_PRODUZINDO]  DEFAULT ('N') FOR [PRODUZINDO]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF_PEDIDOS_SELECIONADO]  DEFAULT ('N') FOR [SELECIONADO]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__TRANSP___1EF99443]  DEFAULT ((0)) FOR [TRANSPORTEVOLUMES]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__COMISSA__20E1DCB5]  DEFAULT ((0)) FOR [COMISSAO]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__QTDE_DI__21D600EE]  DEFAULT ((0)) FOR [QTDE_DISPONIVEL]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__QTDE_TO__22CA2527]  DEFAULT ((0)) FOR [QTDE_TOTAL]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__QTDE_PR__23BE4960]  DEFAULT ((0)) FOR [QTDE_PRODUTOS]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__QTDE_SE__24B26D99]  DEFAULT ((0)) FOR [QTDE_SERVICOS]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF_PEDIDOS_DESCONTO]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__VLR_DES__25A691D2]  DEFAULT ((0)) FOR [VLR_DESCONTO]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__VLR_PRO__278EDA44]  DEFAULT ((0)) FOR [VLR_PRODUTOS]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__VLR_IMP__2882FE7D]  DEFAULT ((0)) FOR [VLR_IMPOSTOS]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__VLR_SER__269AB60B]  DEFAULT ((0)) FOR [VLR_SERVICOS]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__VLR_TOT__297722B6]  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__STATUS___2A6B46EF]  DEFAULT ((0)) FOR [STATUSPERCENTUAL]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__CODIG__3E723F9C]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__CLIEN__3F6663D5]  DEFAULT ((0)) FOR [CLIENTE]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__VENDE__405A880E]  DEFAULT ((0)) FOR [VENDEDOR]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__TABEL__414EAC47]  DEFAULT ((0)) FOR [TABELA]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__FORMA__4242D080]  DEFAULT ((0)) FOR [FORMAPAGTO]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__TRANS__4336F4B9]  DEFAULT ((0)) FOR [TRANSPORTADORA]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF_PEDIDOS_ITENS_APROVADO]  DEFAULT ('N') FOR [APROVADO]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__GRADE__442B18F2]  DEFAULT ((0)) FOR [GRADE_TAMANHOS]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_IT__QTDE__451F3D2B]  DEFAULT ((0)) FOR [QTDE]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__VLR_U__46136164]  DEFAULT ((0)) FOR [VLR_UNIT]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__DESCO__4707859D]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__VLR_D__47FBA9D6]  DEFAULT ((0)) FOR [VLR_DESCONTO]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__VLR_I__48EFCE0F]  DEFAULT ((0)) FOR [VLR_IMPOSTOS]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__VLR_T__49E3F248]  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__QTDE___4AD81681]  DEFAULT ((0)) FOR [QTDE_LIBERADA]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__QTDE___4BCC3ABA]  DEFAULT ((0)) FOR [QTDE_FATURADA]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] ADD  CONSTRAINT [DF__PEDIDOS_I__QTDE___4CC05EF3]  DEFAULT ((0)) FOR [QTDE_CANCELADA]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS_GRADE] ADD  CONSTRAINT [DF__PEDIDOS_I__PEDID__2FEF161B]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS_GRADE] ADD  CONSTRAINT [DF_PEDIDOS_ITENS_GRADE_APROVADO]  DEFAULT ('N') FOR [APROVADO]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS_GRADE] ADD  CONSTRAINT [DF__PEDIDOS_I__SEQUE__30E33A54]  DEFAULT ((0)) FOR [SEQUENCIA]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS_GRADE] ADD  CONSTRAINT [DF__PEDIDOS_I__QUANT__31D75E8D]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS_GRADE] ADD  CONSTRAINT [DF__PEDIDOS_I__VALOR__32CB82C6]  DEFAULT ((0)) FOR [VALOR_UNIT]
GO
ALTER TABLE [dbo].[PEDIDOS_MATERIAPRIMA_TECIDOS] ADD  CONSTRAINT [DF_PEDIDOS_MATERIAPRIMA_TECIDOS_UND]  DEFAULT ('M') FOR [UNIDADE]
GO
ALTER TABLE [dbo].[PEDIDOS_MATERIAPRIMA_TECIDOS] ADD  CONSTRAINT [DF_PEDIDOS_MATERIAPRIMA_TECIDOS_ESTOQUESALDO]  DEFAULT ((0)) FOR [ESTOQUESALDO]
GO
ALTER TABLE [dbo].[PEDIDOS_MATERIAPRIMA_TECIDOS] ADD  CONSTRAINT [DF_PEDIDOS_MATERIAPRIMA_TECIDOS_CONSUMO]  DEFAULT ((0)) FOR [CONSUMO]
GO
ALTER TABLE [dbo].[PEDIDOS_MATERIAPRIMA_TECIDOS] ADD  CONSTRAINT [DF_PEDIDOS_MATERIAPRIMA_TECIDOS_QTDEBAIXAR]  DEFAULT ((0)) FOR [QTDEBAIXAR]
GO
ALTER TABLE [dbo].[PEDIDOS_MATERIAPRIMA_TECIDOS] ADD  CONSTRAINT [DF_PEDIDOS_MATERIAPRIMA_TECIDOS_APROVADO]  DEFAULT ('N') FOR [SELECIONADO]
GO
ALTER TABLE [dbo].[PEDIDOS_MOVIMENTO] ADD  CONSTRAINT [DF_PEDIDOS_MOVIMENTO_APROVADO]  DEFAULT ('N') FOR [APROVADO]
GO
ALTER TABLE [dbo].[PLANO_CONTAS_CLASSE] ADD  CONSTRAINT [DF__PLANO_CON__CODIG__56B3DD81]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[PLANO_CONTAS_CLASSE] ADD  CONSTRAINT [DF__PLANO_CON__VALOR__57A801BA]  DEFAULT ((0)) FOR [VALOR_ACUMULADO]
GO
ALTER TABLE [dbo].[PLANO_CONTAS_DETALHES] ADD  CONSTRAINT [DF_PLANO_CONTAS_DETALHES_LIMITE]  DEFAULT ((0)) FOR [LIMITE]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__EMPRE__75CD617E]  DEFAULT ('') FOR [EMPRESA]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__REFER__76C185B7]  DEFAULT ('') FOR [REFERENCIA]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__DESCR__77B5A9F0]  DEFAULT ('') FOR [DESCRICAO]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__COR_I__78A9CE29]  DEFAULT ((0)) FOR [COR_ID]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFASE__COR__799DF262]  DEFAULT ('') FOR [COR]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__TAMAN__7A92169B]  DEFAULT ((0)) FOR [TAMANHO_ID]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__TAMAN__7B863AD4]  DEFAULT ('') FOR [TAMANHO]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__ORDEM__7C7A5F0D]  DEFAULT ('') FOR [ORDEM_GRADE]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__QTDE___7D6E8346]  DEFAULT ((0)) FOR [QTDE_FISICO]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__QTDE___7E62A77F]  DEFAULT ((0)) FOR [QTDE_VENDIDO]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__QTDE___7F56CBB8]  DEFAULT ((0)) FOR [QTDE_ENTREGUE]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__QTDE___004AEFF1]  DEFAULT ((0)) FOR [QTDE_PENDENTE]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__QTDE___013F142A]  DEFAULT ((0)) FOR [QTDE_PRODUZINDO]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__QTDE___02333863]  DEFAULT ((0)) FOR [QTDE_DEMANDA]
GO
ALTER TABLE [dbo].[TBL_NECESSIDADES] ADD  CONSTRAINT [DF__TBL_PCPFA__QTDE___03275C9C]  DEFAULT ((0)) FOR [QTDE_EXCEDENTE]
GO
ALTER TABLE [dbo].[TPRECO] ADD  CONSTRAINT [DF__TPRECO__VALOR_MI__6CA31EA0]  DEFAULT ((0)) FOR [VALOR_MIN]
GO
ALTER TABLE [dbo].[TPRECO] ADD  CONSTRAINT [DF__TPRECO__AJUSTE_V__6D9742D9]  DEFAULT ((0)) FOR [AJUSTE_VALOR]
GO
ALTER TABLE [dbo].[TPRECO_DESCONTOS] ADD  CONSTRAINT [DF__TPRECO_DE__CODIG__23893F36]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[TPRECO_DESCONTOS] ADD  CONSTRAINT [DF__TPRECO_DE__QTDE1__247D636F]  DEFAULT ((0)) FOR [QTDE1_PARAM]
GO
ALTER TABLE [dbo].[TPRECO_DESCONTOS] ADD  CONSTRAINT [DF__TPRECO_DE__QTDE2__257187A8]  DEFAULT ((0)) FOR [QTDE2_PARAM]
GO
ALTER TABLE [dbo].[TPRECO_DESCONTOS] ADD  CONSTRAINT [DF__TPRECO_DE__DESCO__2665ABE1]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[TPRECO_DESCONTOS] ADD  CONSTRAINT [DF__TPRECO_DE__COMIS__2759D01A]  DEFAULT ((0)) FOR [COMISSAO]
GO
ALTER TABLE [dbo].[TPRECO_REFERENCIAS] ADD  CONSTRAINT [DF_TPRECO_REFERENCIAS_PRC_VENDA]  DEFAULT ((0)) FOR [PRC_VENDA]
GO
ALTER TABLE [dbo].[TPRECO_REFERENCIAS_GRADES] ADD  CONSTRAINT [DF_TPRECO_REFERENCIAS_GRADES_PRC_VENDA]  DEFAULT ((0)) FOR [PRC_VENDA]
GO
ALTER TABLE [dbo].[TPRECOSERVICO] ADD  CONSTRAINT [DF_TPRECOSERVICO_VLR_UNIT]  DEFAULT ((0)) FOR [VLR_UNIT]
GO
ALTER TABLE [dbo].[USUARIOS_ACESSO] ADD  CONSTRAINT [DF__USUARIOS___CODIG__20ACD28B]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[USUARIOS_LOG] ADD  CONSTRAINT [DF__USUARIOS___CODIG__7E57BA87]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__EMPRESA__10766AC2]  DEFAULT ((0)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__NOTAFISC__116A8EFB]  DEFAULT ((0)) FOR [NOTAFISCAL]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__CLIENTE__125EB334]  DEFAULT ((0)) FOR [CLIENTE]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__VENDEDOR__1352D76D]  DEFAULT ((0)) FOR [VENDEDOR]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__CFOP__1446FBA6]  DEFAULT ((5101)) FOR [CFOP]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__TABELA__153B1FDF]  DEFAULT ((0)) FOR [TABELA]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__FORMAPAG__162F4418]  DEFAULT ((0)) FOR [FORMAPAGTO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__TRANSPOR__17236851]  DEFAULT ((0)) FOR [TRANSPORTADORA]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF_VENDAS_NOTAFISCALORIGEM]  DEFAULT ((0)) FOR [NOTAFISCALORIGEM]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ICMS_BAS__18178C8A]  DEFAULT ((0)) FOR [ICMS_BASECALCULO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ICMS_VAL__190BB0C3]  DEFAULT ((0)) FOR [ICMS_VALOR]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ICMS_BAS__19FFD4FC]  DEFAULT ((0)) FOR [ICMS_BASECALCULO_SUBSTITUICAO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ICMS_BAS__1AF3F935]  DEFAULT ((0)) FOR [ICMS_BASECALCULO_SUBSTITUICAO_VALOR]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ICMS_RED__1BE81D6E]  DEFAULT ((0)) FOR [ICMS_REDUCAO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ICMS_RED__1CDC41A7]  DEFAULT ((0)) FOR [ICMS_REDUCAO_VALOR]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__IPI_BASE__1DD065E0]  DEFAULT ((0)) FOR [IPI_BASECALCULO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__IPI_VALO__1EC48A19]  DEFAULT ((0)) FOR [IPI_VALOR]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ISS__1FB8AE52]  DEFAULT ((0)) FOR [ISS]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ISS_BASE__20ACD28B]  DEFAULT ((0)) FOR [ISS_BASECALCULO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__ISS_VALO__21A0F6C4]  DEFAULT ((0)) FOR [ISS_VALOR]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__VLR_FRET__22951AFD]  DEFAULT ((0)) FOR [VLR_FRETE]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__VLR_SEGU__23893F36]  DEFAULT ((0)) FOR [VLR_SEGURO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__VLR_DESP__247D636F]  DEFAULT ((0)) FOR [VLR_DESPESAS_ASSESSORIAS]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__DESCONTO__257187A8]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__VLR_DESC__2665ABE1]  DEFAULT ((0)) FOR [VLR_DESCONTO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__VLR_RECE__2759D01A]  DEFAULT ((0)) FOR [VLR_RECEBIDO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__TROCO__284DF453]  DEFAULT ((0)) FOR [TROCO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__VLR_CAIX__2942188C]  DEFAULT ((0)) FOR [VLR_CAIXA]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF_VENDAS_FRETE]  DEFAULT ('CIF') FOR [FRETE]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__FRETE_QU__2A363CC5]  DEFAULT ((0)) FOR [FRETE_QUANTIDADE]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__FRETE_PB__2B2A60FE]  DEFAULT ((0)) FOR [FRETE_PBRUTO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__FRETE_PL__2C1E8537]  DEFAULT ((0)) FOR [FRETE_PLIQUIDO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF_VENDAS_CONFERENCIA]  DEFAULT ((0)) FOR [CONFERENCIA]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF_VENDAS_NFE_FINALIZADE]  DEFAULT ((1)) FOR [NFE_FINALIDADE]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF_VENDAS_NFE_CERTIFICADO]  DEFAULT ('') FOR [NFE_CERTIFICADO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__QTDE_PRO__2D12A970]  DEFAULT ((0)) FOR [QTDE_PRODUTOS]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__VALOR_PR__2E06CDA9]  DEFAULT ((0)) FOR [VALOR_PRODUTOS]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF__VENDAS__TOTAL_NF__2EFAF1E2]  DEFAULT ((0)) FOR [TOTAL_NF]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF_VENDAS_REGISTRODIARIO]  DEFAULT ((0)) FOR [REGISTRODIARIO]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAOCREDITADA]  DEFAULT ('N') FOR [DEVOLUCAOCREDITADA]
GO
ALTER TABLE [dbo].[VENDAS] ADD  CONSTRAINT [DF_VENDAS_CREDITOABATIMENTO]  DEFAULT ((0)) FOR [CREDITOABATIMENTO]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_QUANTIDADE]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_VLR_UNIT]  DEFAULT ((0)) FOR [VLR_UNIT]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_IPI]  DEFAULT ((0)) FOR [IPI]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_VLR_IPI]  DEFAULT ((0)) FOR [VLR_IPI]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_ICMS]  DEFAULT ((0)) FOR [ICMS]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_VLR_ICMS]  DEFAULT ((0)) FOR [VLR_ICMS]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_ISS]  DEFAULT ((0)) FOR [ISS]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_ISS_BASECALCULO]  DEFAULT ((0)) FOR [ISS_BASECALCULO]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_ISS_VALOR]  DEFAULT ((0)) FOR [ISS_VALOR]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_DESCONTO]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_VLR_DESCONTO]  DEFAULT ((0)) FOR [VLR_DESCONTO]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] ADD  CONSTRAINT [DF_VENDAS_DEVOLUCAO_ITENS_VLR_TOTAL]  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__CODIG__08A03ED0]  DEFAULT ((0)) FOR [CODIGO]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__EMPRE__09946309]  DEFAULT ((0)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__NOTAF__0A888742]  DEFAULT ((0)) FOR [NOTAFISCAL]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__CLIEN__0B7CAB7B]  DEFAULT ((0)) FOR [CLIENTE]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__VENDE__0C70CFB4]  DEFAULT ((0)) FOR [VENDEDOR]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_ITE__CFOP__0D64F3ED]  DEFAULT ((0)) FOR [CFOP]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__TABEL__0E591826]  DEFAULT ((0)) FOR [TABELA]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__FORMA__0F4D3C5F]  DEFAULT ((0)) FOR [FORMAPAGTO]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__TRANS__10416098]  DEFAULT ((0)) FOR [TRANSPORTADORA]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF_VENDAS_ITENS_SEQUENCIAITEM]  DEFAULT ((0)) FOR [SEQUENCIAITEM]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF_VENDAS_ITENS_UND]  DEFAULT ('PC') FOR [UND]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__QUANT__113584D1]  DEFAULT ((0)) FOR [QUANTIDADE]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__VLR_U__1229A90A]  DEFAULT ((0)) FOR [VLR_UNIT]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_ITEN__IPI__131DCD43]  DEFAULT ((0)) FOR [IPI]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__VLR_I__1411F17C]  DEFAULT ((0)) FOR [VLR_IPI]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_ITE__ICMS__150615B5]  DEFAULT ((0)) FOR [ICMS]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__VLR_I__15FA39EE]  DEFAULT ((0)) FOR [VLR_ICMS]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_ITEN__ISS__16EE5E27]  DEFAULT ((0)) FOR [ISS]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__ISS_B__17E28260]  DEFAULT ((0)) FOR [ISS_BASECALCULO]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__ISS_V__18D6A699]  DEFAULT ((0)) FOR [ISS_VALOR]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__DESCO__19CACAD2]  DEFAULT ((0)) FOR [DESCONTO]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__VLR_D__1ABEEF0B]  DEFAULT ((0)) FOR [VLR_DESCONTO]
GO
ALTER TABLE [dbo].[VENDAS_ITENS] ADD  CONSTRAINT [DF__VENDAS_IT__VLR_T__1BB31344]  DEFAULT ((0)) FOR [VLR_TOTAL]
GO
ALTER TABLE [dbo].[VENDAS_ITENS_GRADES] ADD  CONSTRAINT [DF_VENDAS_ITENS_GRADES_EMPRESA]  DEFAULT ((0)) FOR [EMPRESA]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_BANCO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_CLIENTES_BANCO] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[CAD_CLIENTES] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_CLIENTES_BANCO] CHECK CONSTRAINT [FK_CAD_CLIENTES_BANCO]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_COMERCIO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_CLIENTES_COMERCIO] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[CAD_CLIENTES] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_CLIENTES_COMERCIO] CHECK CONSTRAINT [FK_CAD_CLIENTES_COMERCIO]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_CREDITOS]  WITH CHECK ADD  CONSTRAINT [FK_CAD_CLIENTES_CREDITOS] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[CAD_CLIENTES] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_CLIENTES_CREDITOS] CHECK CONSTRAINT [FK_CAD_CLIENTES_CREDITOS]
GO
ALTER TABLE [dbo].[CAD_CLIENTES_SOCIOS]  WITH NOCHECK ADD  CONSTRAINT [FK_CAD_CLIENTES_SOCIOS] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[CAD_CLIENTES] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_CLIENTES_SOCIOS] CHECK CONSTRAINT [FK_CAD_CLIENTES_SOCIOS]
GO
ALTER TABLE [dbo].[CAD_ETIQUETASDET]  WITH NOCHECK ADD FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_ETIQUETAS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_FASESGRADE_LISTA]  WITH CHECK ADD  CONSTRAINT [FK_CAD_FASESGRADE] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_FASESGRADE] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_FASESGRADE_LISTA] CHECK CONSTRAINT [FK_CAD_FASESGRADE]
GO
ALTER TABLE [dbo].[CAD_FORMAPAGTODIAS]  WITH CHECK ADD FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_FORMAPAGTO] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_GRADELISTA]  WITH NOCHECK ADD FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_GRADE] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_PROCESSO_MAQUINA_DETALHE]  WITH NOCHECK ADD FOREIGN KEY([CODIGO], [MAQUINA])
REFERENCES [dbo].[CAD_PROCESSO_MAQUINA] ([CODIGO], [MAQUINA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_PROCESSO_OPERADOR_DETALHE]  WITH NOCHECK ADD FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PROCESSO_OPERADOR] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_PROCESSOSLISTA]  WITH NOCHECK ADD FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PROCESSOSGRADE] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_PRODUTOS]  WITH NOCHECK ADD  CONSTRAINT [FK_CAD_PRODUTOS_FASES] FOREIGN KEY([FASE])
REFERENCES [dbo].[CAD_FASESGRADE] ([CODIGO])
GO
ALTER TABLE [dbo].[CAD_PRODUTOS] CHECK CONSTRAINT [FK_CAD_PRODUTOS_FASES]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_CODBARRA]  WITH NOCHECK ADD  CONSTRAINT [FK_CAD_PROD_CODBARRA_REFERENCIA] FOREIGN KEY([REFERENCIA])
REFERENCES [dbo].[CAD_PRODUTOS] ([REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_CODBARRA] CHECK CONSTRAINT [FK_CAD_PROD_CODBARRA_REFERENCIA]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_FOTOS]  WITH NOCHECK ADD  CONSTRAINT [FK_CAD_PROD_FOTOS_CODIGO] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_FOTOS] CHECK CONSTRAINT [FK_CAD_PROD_FOTOS_CODIGO]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_GRADES]  WITH CHECK ADD  CONSTRAINT [FK_CAD_PRODUTOS_GRADETEMP] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_GRADES] CHECK CONSTRAINT [FK_CAD_PRODUTOS_GRADETEMP]
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_GRADESQUALIDADES]  WITH CHECK ADD  CONSTRAINT [FK_CAD_PRODUTOS_GRADEQUALIDADE] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAD_PRODUTOS_GRADESQUALIDADES] CHECK CONSTRAINT [FK_CAD_PRODUTOS_GRADEQUALIDADE]
GO
ALTER TABLE [dbo].[CAD_TURNO_GRADE]  WITH NOCHECK ADD FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_TURNO] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS_ITENS]  WITH CHECK ADD  CONSTRAINT [FK_COMPRA_PEDIDOS_ITENS] FOREIGN KEY([EMPRESA], [CODIGO])
REFERENCES [dbo].[COMPRA_PEDIDOS] ([EMPRESA], [CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[COMPRA_PEDIDOS_ITENS] CHECK CONSTRAINT [FK_COMPRA_PEDIDOS_ITENS]
GO
ALTER TABLE [dbo].[COMPRAS]  WITH NOCHECK ADD  CONSTRAINT [FK_COMPRAS_FORNECEDOR] FOREIGN KEY([FORNECEDOR])
REFERENCES [dbo].[CAD_CLIENTES] ([CODIGO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[COMPRAS] CHECK CONSTRAINT [FK_COMPRAS_FORNECEDOR]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS]  WITH CHECK ADD  CONSTRAINT [FK_COMPRAS_ITENS_COMPRAS] FOREIGN KEY([CODIGO], [NOTAFISCAL], [MODELO], [SERIE], [FORNECEDOR], [DATA], [DATAENTRADA])
REFERENCES [dbo].[COMPRAS] ([CODIGO], [NOTAFISCAL], [MODELO], [SERIE], [FORNECEDOR], [DATA], [DATAENTRADA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] CHECK CONSTRAINT [FK_COMPRAS_ITENS_COMPRAS]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS]  WITH CHECK ADD  CONSTRAINT [FK_COMPRAS_ITENS_PRODUTOS] FOREIGN KEY([PRODUTO])
REFERENCES [dbo].[CAD_PRODUTOS] ([REFERENCIA])
GO
ALTER TABLE [dbo].[COMPRAS_ITENS] CHECK CONSTRAINT [FK_COMPRAS_ITENS_PRODUTOS]
GO
ALTER TABLE [dbo].[COMPRAS_ITENS_GRADES]  WITH CHECK ADD  CONSTRAINT [FK_COMPRAS_ITENS_GRADES] FOREIGN KEY([CODIGO], [REFERENCIA])
REFERENCES [dbo].[COMPRAS_ITENS] ([CODIGO], [PRODUTO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[COMPRAS_ITENS_GRADES] CHECK CONSTRAINT [FK_COMPRAS_ITENS_GRADES]
GO
ALTER TABLE [dbo].[COMPRAS_REQUISICAOITENS]  WITH NOCHECK ADD FOREIGN KEY([CODIGO])
REFERENCES [dbo].[COMPRAS_REQUISICAO] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTRL_BANCARIO]  WITH NOCHECK ADD  CONSTRAINT [FK_CTRL_BANCARIO_CONTACORRENTE] FOREIGN KEY([CTA_CORRENTE])
REFERENCES [dbo].[FIN_CONTA_CORRENTE] ([CODIGO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CTRL_BANCARIO] CHECK CONSTRAINT [FK_CTRL_BANCARIO_CONTACORRENTE]
GO
ALTER TABLE [dbo].[CTRL_BANCARIO_SALDO]  WITH NOCHECK ADD  CONSTRAINT [FK__CTRL_BANC__CODIG__7B113988] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CTRL_BANCARIO] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTRL_BANCARIO_SALDO] CHECK CONSTRAINT [FK__CTRL_BANC__CODIG__7B113988]
GO
ALTER TABLE [dbo].[CTRL_CAIXA_SALDO]  WITH NOCHECK ADD  CONSTRAINT [FK__CTRL_CAIX__CODIG__55DFB4D9] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CTRL_CAIXA] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTRL_CAIXA_SALDO] CHECK CONSTRAINT [FK__CTRL_CAIX__CODIG__55DFB4D9]
GO
ALTER TABLE [dbo].[CTRL_NFS_CAMPOS]  WITH NOCHECK ADD  CONSTRAINT [FK__CTRL_NFS___CODIG__2354350C] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CTRL_NFS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTRL_NFS_CAMPOS] CHECK CONSTRAINT [FK__CTRL_NFS___CODIG__2354350C]
GO
ALTER TABLE [dbo].[EXPEDICAO_CONFERENCIA_ITENS]  WITH CHECK ADD FOREIGN KEY([CODIGO], [PEDIDO])
REFERENCES [dbo].[EXPEDICAO_CONFERENCIA] ([CODIGO], [PEDIDO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EXPEDICAO_PACOTE_ITENS]  WITH CHECK ADD FOREIGN KEY([CODIGO], [PEDIDO])
REFERENCES [dbo].[EXPEDICAO_PACOTE] ([CODIGO], [PEDIDO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FIN_BORDEROLISTA]  WITH CHECK ADD  CONSTRAINT [FK_FIN_BORDEROLISTA] FOREIGN KEY([EMPRESA], [CODIGO])
REFERENCES [dbo].[FIN_BORDERO] ([EMPRESA], [CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FIN_BORDEROLISTA] CHECK CONSTRAINT [FK_FIN_BORDEROLISTA]
GO
ALTER TABLE [dbo].[FIN_COBRANCA_CARTAEMISSAO]  WITH CHECK ADD FOREIGN KEY([CARTA])
REFERENCES [dbo].[FIN_COBRANCA_CARTA] ([CODIGO])
GO
ALTER TABLE [dbo].[FIN_COBRANCA_CARTAEMISSAO]  WITH CHECK ADD FOREIGN KEY([CARTA])
REFERENCES [dbo].[FIN_COBRANCA_CARTA] ([CODIGO])
GO
ALTER TABLE [dbo].[FIN_COBRANCA_CARTAEMISSAO]  WITH CHECK ADD FOREIGN KEY([CARTA])
REFERENCES [dbo].[FIN_COBRANCA_CARTA] ([CODIGO])
GO
ALTER TABLE [dbo].[FIN_CONTA_CORRENTE_BOLETO]  WITH CHECK ADD  CONSTRAINT [FK_FIN_CONTA_CORRENTE] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[FIN_CONTA_CORRENTE] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FIN_CONTA_CORRENTE_BOLETO] CHECK CONSTRAINT [FK_FIN_CONTA_CORRENTE]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_CTAPAGAR_FORNECEDOR] FOREIGN KEY([FORNECEDOR])
REFERENCES [dbo].[CAD_CLIENTES] ([CODIGO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR] NOCHECK CONSTRAINT [FK_FIN_CTAPAGAR_FORNECEDOR]
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR_SALDO]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_CTAPAGAR] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[FIN_CTAPAGAR] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FIN_CTAPAGAR_SALDO] CHECK CONSTRAINT [FK_FIN_CTAPAGAR]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_CTARECEBER_CLIENTES] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[CAD_CLIENTES] ([CODIGO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[FIN_CTARECEBER] CHECK CONSTRAINT [FK_FIN_CTARECEBER_CLIENTES]
GO
ALTER TABLE [dbo].[FIN_CTARECEBER_SALDO]  WITH CHECK ADD  CONSTRAINT [FK__FIN_CTARECEBER] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[FIN_CTARECEBER] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FIN_CTARECEBER_SALDO] CHECK CONSTRAINT [FK__FIN_CTARECEBER]
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOSDETALHES]  WITH CHECK ADD  CONSTRAINT [FK__FIN_REGISTROSDIARIOS] FOREIGN KEY([EMPRESA], [CODIGO])
REFERENCES [dbo].[FIN_REGISTROSDIARIOS] ([EMPRESA], [CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FIN_REGISTROSDIARIOSDETALHES] CHECK CONSTRAINT [FK__FIN_REGISTROSDIARIOS]
GO
ALTER TABLE [dbo].[PCP_CORES]  WITH CHECK ADD  CONSTRAINT [FK_PCP_CORES_CAD_PRODUTOS] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_CORES] CHECK CONSTRAINT [FK_PCP_CORES_CAD_PRODUTOS]
GO
ALTER TABLE [dbo].[PCP_CUSTOS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_CUSTOS] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_CUSTOS] CHECK CONSTRAINT [FK_PCP_CUSTOS]
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_FASETRANSFERENCIA] FOREIGN KEY([EMPRESA], [CODIGO], [ORDEMPRODUCAO], [DATA], [DATARETORNO], [TERCEIRIZADO], [FASE])
REFERENCES [dbo].[PCP_FASETRANSFERENCIA] ([EMPRESA], [CODIGO], [ORDEMPRODUCAO], [DATA], [DATARETORNO], [TERCEIRIZADO], [FASE])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_FASETRANSFERENCIA_REFERENCIAS] CHECK CONSTRAINT [FK_PCP_FASETRANSFERENCIA]
GO
ALTER TABLE [dbo].[PCP_MAQUINAS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_MAQUINAS_CAD_PRODUTOS] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_MAQUINAS] CHECK CONSTRAINT [FK_PCP_MAQUINAS_CAD_PRODUTOS]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA]  WITH CHECK ADD  CONSTRAINT [FK_PCP_MATERIAPRIMA_CAD_PRODUTOS] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA] CHECK CONSTRAINT [FK_PCP_MATERIAPRIMA_CAD_PRODUTOS]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_GRADE]  WITH CHECK ADD  CONSTRAINT [FK_PCP_MATERIAPRIMA_GRADE] FOREIGN KEY([EMPRESA], [CODIGO], [REFERENCIA])
REFERENCES [dbo].[PCP_MATERIAPRIMA] ([EMPRESA], [CODIGO], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_GRADE] CHECK CONSTRAINT [FK_PCP_MATERIAPRIMA_GRADE]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_MATERIAPRIMA_TECIDOS_CAD_PRODUTOS] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOS] CHECK CONSTRAINT [FK_PCP_MATERIAPRIMA_TECIDOS_CAD_PRODUTOS]
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOSGRADE]  WITH CHECK ADD  CONSTRAINT [FK_PCP_MATERIAPRIMA_TECIDOSGRADE] FOREIGN KEY([EMPRESA], [CODIGO], [REFERENCIA])
REFERENCES [dbo].[PCP_MATERIAPRIMA_TECIDOS] ([EMPRESA], [CODIGO], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_MATERIAPRIMA_TECIDOSGRADE] CHECK CONSTRAINT [FK_PCP_MATERIAPRIMA_TECIDOSGRADE]
GO
ALTER TABLE [dbo].[PCP_MEDIDAS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_MEDIDAS_CAD_PRODUTOS] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_MEDIDAS] CHECK CONSTRAINT [FK_PCP_MEDIDAS_CAD_PRODUTOS]
GO
ALTER TABLE [dbo].[PCP_MEDIDAS_APOS_LAVAR]  WITH CHECK ADD  CONSTRAINT [FK_PCP_MEDIDAS_APOS_LAVAR_CAD_PRODUTOS] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
GO
ALTER TABLE [dbo].[PCP_MEDIDAS_APOS_LAVAR] CHECK CONSTRAINT [FK_PCP_MEDIDAS_APOS_LAVAR_CAD_PRODUTOS]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_DEFEITOS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_ORDEMPRODUCAO_DEFEITOS] FOREIGN KEY([EMPRESA], [CODIGO], [APROVADO], [DATA], [REFERENCIA])
REFERENCES [dbo].[PCP_ORDEMPRODUCAO_ITENS] ([EMPRESA], [CODIGO], [APROVADO], [DATA], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_DEFEITOS] CHECK CONSTRAINT [FK_PCP_ORDEMPRODUCAO_DEFEITOS]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_ORDEMPRODUCAO_ITENS] FOREIGN KEY([EMPRESA], [CODIGO], [APROVADO], [DATA])
REFERENCES [dbo].[PCP_ORDEMPRODUCAO] ([EMPRESA], [CODIGO], [APROVADO], [DATA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS] CHECK CONSTRAINT [FK_PCP_ORDEMPRODUCAO_ITENS]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS_GRADE]  WITH CHECK ADD  CONSTRAINT [FK_PCP_ORDEMPRODUCAO_ITENS_GRADE] FOREIGN KEY([EMPRESA], [CODIGO], [APROVADO], [DATA], [REFERENCIA])
REFERENCES [dbo].[PCP_ORDEMPRODUCAO_ITENS] ([EMPRESA], [CODIGO], [APROVADO], [DATA], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_ITENS_GRADE] CHECK CONSTRAINT [FK_PCP_ORDEMPRODUCAO_ITENS_GRADE]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_MOVIMENTO]  WITH CHECK ADD  CONSTRAINT [FK_PCP_ORDEMPRODUCAO_MOVIMENTO] FOREIGN KEY([EMPRESA], [CODIGO], [APROVADO], [DATA], [REFERENCIA])
REFERENCES [dbo].[PCP_ORDEMPRODUCAO_ITENS] ([EMPRESA], [CODIGO], [APROVADO], [DATA], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_MOVIMENTO] CHECK CONSTRAINT [FK_PCP_ORDEMPRODUCAO_MOVIMENTO]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_MPGRADE]  WITH CHECK ADD  CONSTRAINT [FK_PCP_ORDEMPRODUCAO_MPGRADE] FOREIGN KEY([EMPRESA], [CODIGO], [REFERENCIA])
REFERENCES [dbo].[PCP_ORDEMPRODUCAO_MP] ([EMPRESA], [CODIGO], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_MPGRADE] CHECK CONSTRAINT [FK_PCP_ORDEMPRODUCAO_MPGRADE]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_MPTECIDOSGRADE]  WITH CHECK ADD  CONSTRAINT [FK_PCP_ORDEMPRODUCAO_MPTECIDOSGRADE] FOREIGN KEY([EMPRESA], [CODIGO], [REFERENCIA])
REFERENCES [dbo].[PCP_ORDEMPRODUCAO_MPTECIDOS] ([EMPRESA], [CODIGO], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_MPTECIDOSGRADE] CHECK CONSTRAINT [FK_PCP_ORDEMPRODUCAO_MPTECIDOSGRADE]
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PERDAS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_ORDEMPRODUCAO_PERDAS] FOREIGN KEY([EMPRESA], [CODIGO], [APROVADO], [DATA], [REFERENCIA])
REFERENCES [dbo].[PCP_ORDEMPRODUCAO_ITENS] ([EMPRESA], [CODIGO], [APROVADO], [DATA], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_ORDEMPRODUCAO_PERDAS] CHECK CONSTRAINT [FK_PCP_ORDEMPRODUCAO_PERDAS]
GO
ALTER TABLE [dbo].[PCP_PROCESSOS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_PROCESSOS_CAD_PRODUTOS] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[CAD_PRODUTOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_PROCESSOS] CHECK CONSTRAINT [FK_PCP_PROCESSOS_CAD_PRODUTOS]
GO
ALTER TABLE [dbo].[PCP_TERCEIRIZADO_REFERENCIAS]  WITH CHECK ADD  CONSTRAINT [FK_PCP_TERCEIRIZADO_REFERENCIAS] FOREIGN KEY([EMPRESA], [CODIGO], [ORDEMPRODUCAO])
REFERENCES [dbo].[PCP_TERCEIRIZADO] ([EMPRESA], [CODIGO], [ORDEMPRODUCAO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PCP_TERCEIRIZADO_REFERENCIAS] CHECK CONSTRAINT [FK_PCP_TERCEIRIZADO_REFERENCIAS]
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA_ITENS]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOCONFERENCIA_ITENS_GRADE] FOREIGN KEY([CODIGO], [PEDIDO])
REFERENCES [dbo].[PEDIDOCONFERENCIA] ([CODIGO], [PEDIDO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOCONFERENCIA_ITENS] CHECK CONSTRAINT [FK_PEDIDOCONFERENCIA_ITENS_GRADE]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_ITENS] FOREIGN KEY([EMPRESA], [CODIGO], [DATA], [CLIENTE], [VENDEDOR], [TABELA], [FORMAPAGTO], [TRANSPORTADORA], [TIPO], [APROVADO], [ORDEMPRODUCAO], [PRODUZINDO], [SELECIONADO])
REFERENCES [dbo].[PEDIDOS] ([EMPRESA], [CODIGO], [DATA], [CLIENTE], [VENDEDOR], [TABELA], [FORMAPAGTO], [TRANSPORTADORA], [TIPO], [APROVADO], [ORDEMPRODUCAO], [PRODUZINDO], [SELECIONADO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS] CHECK CONSTRAINT [FK_PEDIDOS_ITENS]
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS_GRADE]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_ITENS_GRADE] FOREIGN KEY([EMPRESA], [CODIGO], [REFERENCIA], [APROVADO], [ORDEMPRODUCAO])
REFERENCES [dbo].[PEDIDOS_ITENS] ([EMPRESA], [CODIGO], [REFERENCIA], [APROVADO], [ORDEMPRODUCAO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS_ITENS_GRADE] CHECK CONSTRAINT [FK_PEDIDOS_ITENS_GRADE]
GO
ALTER TABLE [dbo].[PEDIDOS_MOVIMENTO]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_MOVIMENTO] FOREIGN KEY([EMPRESA], [CODIGO], [REFERENCIA], [APROVADO], [ORDEMPRODUCAO], [COR_ID], [TAMANHO_ID])
REFERENCES [dbo].[PEDIDOS_ITENS_GRADE] ([EMPRESA], [CODIGO], [REFERENCIA], [APROVADO], [ORDEMPRODUCAO], [COR_ID], [TAMANHO_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS_MOVIMENTO] CHECK CONSTRAINT [FK_PEDIDOS_MOVIMENTO]
GO
ALTER TABLE [dbo].[PEDIDOS_SERVICOS]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_SERVICOS] FOREIGN KEY([EMPRESA], [CODIGO], [DATA], [CLIENTE], [VENDEDOR], [TABELA], [FORMAPAGTO], [TRANSPORTADORA], [TIPO], [APROVADO], [ORDEMPRODUCAO], [PRODUZINDO], [SELECIONADO])
REFERENCES [dbo].[PEDIDOS] ([EMPRESA], [CODIGO], [DATA], [CLIENTE], [VENDEDOR], [TABELA], [FORMAPAGTO], [TRANSPORTADORA], [TIPO], [APROVADO], [ORDEMPRODUCAO], [PRODUZINDO], [SELECIONADO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS_SERVICOS] CHECK CONSTRAINT [FK_PEDIDOS_SERVICOS]
GO
ALTER TABLE [dbo].[PEDIDOS_TERCEIROS]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_TERCEIROS] FOREIGN KEY([EMPRESA], [CODIGO], [DATA], [CLIENTE], [VENDEDOR], [TABELA], [FORMAPAGTO], [TRANSPORTADORA], [TIPO], [APROVADO], [ORDEMPRODUCAO], [PRODUZINDO], [SELECIONADO])
REFERENCES [dbo].[PEDIDOS] ([EMPRESA], [CODIGO], [DATA], [CLIENTE], [VENDEDOR], [TABELA], [FORMAPAGTO], [TRANSPORTADORA], [TIPO], [APROVADO], [ORDEMPRODUCAO], [PRODUZINDO], [SELECIONADO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS_TERCEIROS] CHECK CONSTRAINT [FK_PEDIDOS_TERCEIROS]
GO
ALTER TABLE [dbo].[PLANO_CONTAS_DETALHES]  WITH CHECK ADD  CONSTRAINT [FK_PLANO_CONTAS_DETALHES] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[PLANO_CONTAS_CLASSE] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PLANO_CONTAS_DETALHES] CHECK CONSTRAINT [FK_PLANO_CONTAS_DETALHES]
GO
ALTER TABLE [dbo].[TPRECO_DESCONTOS]  WITH NOCHECK ADD  CONSTRAINT [FK__TPRECO_DE__CODIG__6ADAD1BF] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[TPRECO] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TPRECO_DESCONTOS] CHECK CONSTRAINT [FK__TPRECO_DE__CODIG__6ADAD1BF]
GO
ALTER TABLE [dbo].[TPRECO_REFERENCIAS]  WITH NOCHECK ADD  CONSTRAINT [FK_TPRECOREFERENCIA] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[TPRECO] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TPRECO_REFERENCIAS] CHECK CONSTRAINT [FK_TPRECOREFERENCIA]
GO
ALTER TABLE [dbo].[TPRECO_REFERENCIAS]  WITH CHECK ADD  CONSTRAINT [FK_TPRECOREFERENCIAS_PRODUTO] FOREIGN KEY([REFERENCIA])
REFERENCES [dbo].[CAD_PRODUTOS] ([REFERENCIA])
GO
ALTER TABLE [dbo].[TPRECO_REFERENCIAS] CHECK CONSTRAINT [FK_TPRECOREFERENCIAS_PRODUTO]
GO
ALTER TABLE [dbo].[TPRECO_REFERENCIAS_GRADES]  WITH NOCHECK ADD  CONSTRAINT [FK_TPRECO_REFERENCIAS_GRADES] FOREIGN KEY([CODIGO], [REFERENCIA])
REFERENCES [dbo].[TPRECO_REFERENCIAS] ([CODIGO], [REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TPRECO_REFERENCIAS_GRADES] CHECK CONSTRAINT [FK_TPRECO_REFERENCIAS_GRADES]
GO
ALTER TABLE [dbo].[USUARIOS_ACESSO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_ACESSO] FOREIGN KEY([CODIGO], [USERNAME])
REFERENCES [dbo].[USUARIOS] ([CODIGO], [USERNAME])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[USUARIOS_ACESSO] CHECK CONSTRAINT [FK_USUARIOS_ACESSO]
GO
ALTER TABLE [dbo].[USUARIOS_LOG]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_LOG] FOREIGN KEY([CODIGO], [USERNAME])
REFERENCES [dbo].[USUARIOS] ([CODIGO], [USERNAME])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[USUARIOS_LOG] CHECK CONSTRAINT [FK_USUARIOS_LOG]
GO
ALTER TABLE [dbo].[VENDAS]  WITH NOCHECK ADD  CONSTRAINT [FK_VNCLIENTE] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[CAD_CLIENTES] ([CODIGO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VENDAS] CHECK CONSTRAINT [FK_VNCLIENTE]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS]  WITH NOCHECK ADD  CONSTRAINT [FK_VENDAS_DEVOLUCAO_ITENS] FOREIGN KEY([CODIGO], [EMPRESA], [NOTAFISCAL], [MODELO], [SERIE], [TIPONF], [EMISSAO], [OPERACAO], [CLIENTE], [VENDEDOR], [CFOP], [TABELA], [FORMAPAGTO], [TRANSPORTADORA])
REFERENCES [dbo].[VENDAS] ([CODIGO], [EMPRESA], [NOTAFISCAL], [MODELO], [SERIE], [TIPONF], [EMISSAO], [OPERACAO], [CLIENTE], [VENDEDOR], [CFOP], [TABELA], [FORMAPAGTO], [TRANSPORTADORA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS] CHECK CONSTRAINT [FK_VENDAS_DEVOLUCAO_ITENS]
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS_GRADES]  WITH CHECK ADD  CONSTRAINT [FK_VENDAS_DEVOLUCAO_ITENS_GRADES] FOREIGN KEY([EMPRESA], [CODIGO], [REFERENCIA])
REFERENCES [dbo].[VENDAS_DEVOLUCAO_ITENS] ([EMPRESA], [CODIGO], [PRODUTO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VENDAS_DEVOLUCAO_ITENS_GRADES] CHECK CONSTRAINT [FK_VENDAS_DEVOLUCAO_ITENS_GRADES]
GO
ALTER TABLE [dbo].[VENDAS_ITENS]  WITH NOCHECK ADD  CONSTRAINT [FK_VENDAS_ITENS] FOREIGN KEY([CODIGO], [EMPRESA], [NOTAFISCAL], [MODELO], [SERIE], [TIPONF], [EMISSAO], [OPERACAO], [CLIENTE], [VENDEDOR], [CFOP], [TABELA], [FORMAPAGTO], [TRANSPORTADORA])
REFERENCES [dbo].[VENDAS] ([CODIGO], [EMPRESA], [NOTAFISCAL], [MODELO], [SERIE], [TIPONF], [EMISSAO], [OPERACAO], [CLIENTE], [VENDEDOR], [CFOP], [TABELA], [FORMAPAGTO], [TRANSPORTADORA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VENDAS_ITENS] CHECK CONSTRAINT [FK_VENDAS_ITENS]
GO
ALTER TABLE [dbo].[VENDAS_ITENS_GRADES]  WITH CHECK ADD  CONSTRAINT [FK_VENDAS_ITENS_GRADES] FOREIGN KEY([EMPRESA], [CODIGO], [REFERENCIA])
REFERENCES [dbo].[VENDAS_ITENS] ([EMPRESA], [CODIGO], [PRODUTO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VENDAS_ITENS_GRADES] CHECK CONSTRAINT [FK_VENDAS_ITENS_GRADES]
GO
ALTER TABLE [dbo].[CAD_CLIENTES]  WITH NOCHECK ADD  CONSTRAINT [CK_CAD_CLIENTE] CHECK  (([TIPO]='E' OR [TIPO]='V' OR [TIPO]='F' OR [TIPO]='C' OR [TIPO]='T' OR [TIPO]='EMPRESA' OR [TIPO]='VENDEDOR' OR [TIPO]='FORNECEDOR' OR [TIPO]='CLIENTE' OR [TIPO]='TRANSPORTADORA' OR [TIPO]='O' OR [TIPO]='OFICINA' OR [TIPO]='TZ' OR [TIPO]='TERCEIRIZADO'))
GO
ALTER TABLE [dbo].[CAD_CLIENTES] CHECK CONSTRAINT [CK_CAD_CLIENTE]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Peso Once' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_PRODUTOS', @level2type=N'COLUMN',@level2name=N'OZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'POR PARDRÃO É  O DEPARTAMENTO DE VENDAS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIN_COMISSOES', @level2type=N'COLUMN',@level2name=N'DEPARTAMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ORIGEM DA COMISSÃO (PEDIDO DE VENDA, NOTA FISCAL OU CONTAS A RECEBER)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIN_COMISSOES', @level2type=N'COLUMN',@level2name=N'ORIGEM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'INFORMAR SE É CRÉDITO OU DEBITO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIN_COMISSOES', @level2type=N'COLUMN',@level2name=N'DC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Em caso de devolução, deve-se informar qual a nota fiscal de origem (que deve existir nesta mesma tabela)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VENDAS', @level2type=N'COLUMN',@level2name=N'NOTAFISCALORIGEM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - NF-e normal / 2 - NF-e complementar  /  3 - NF-e de ajuste' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VENDAS', @level2type=N'COLUMN',@level2name=N'NFE_FINALIDADE'
GO
USE [master]
GO
ALTER DATABASE [VESTIS] SET  READ_WRITE 
GO
