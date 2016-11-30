<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<HTML>
<HEAD>
<TITLE>Book-My Online Book Store</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/book1.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/comm_answer.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/book.list.js"></script>

</HEAD>
<BODY>
	<%@include file="/common/head.jsp"%>

	<DIV id=tag_box style="DISPLAY: none; Z-INDEX: 10; POSITION: absolute"></DIV>
	<DIV id=div_shield></DIV>
	<DIV id=main>
		<DIV class=mainsearch></DIV>
		<DIV class=wrap>
			<!--left start-->
			<!--left end-->
			<DIV class=right>
				<DIV class=right_wai>
					<DIV class=shuming>
						<DIV class=shuming_left>

							<SPAN class=black000><A name=top_bk></A>${book.product_name
									}</SPAN>
						</DIV>
						<DIV class=book_case>
							<SPAN class=seriesname>Book Name： ${book.product_name }</SPAN>
						</DIV>
						<DIV class=empty_box></DIV>
					</DIV>
					<DIV class=book_left>
						<DIV class=book_pic>
							<IMG id=img_show_prd src="../productImages/${book.product_pic }">
							</A>
						</DIV>
						<INPUT id=hid_largepictureurl type=hidden>
					</DIV>
					<DIV class=book_right>
						<DIV id=author_>Author： ${book.author }</DIV>
						<DIV id=publisher_>Publishing： ${book.publishing }</DIV>
						<UL>
							<LI>Date： ${book.publish_dt }</LI>
							<LI>Words： ${book.word_number }</LI>
							<LI>Edition： ${book.which_edtion }</LI>
							<LI>Pages： ${book.total_page }</LI>
							<LI>Print Time： ${book.print_dt }</LI>
							<LI>Format： 16 Open</LI>
							<LI>Impressions： ${book.print_number }</LI>
							<LI>Paper： Offset Paper</LI>
							<LI>I S B N ： ${book.isbn }</LI>
							<LI>Packaging： Paper-cover</LI>
						</UL>

						<DIV class=jiage>
							<SPAN class=gray87>Price：<SPAN class=del
								id=originalPriceTag>$${book.fixed_price }</SPAN>
							</SPAN> <SPAN class=redc30>Discount：$<B>${book.book_price }</B>
							</SPAN> Saving：$ ${book.fixed_price-book.book_price}
							<%-- <c1:retainTwo /> --%>
							<DIV class=pd_buy_num>
								<DIV class=clear></DIV>
							</DIV>
							<DIV class=goumai>
								<span class="list_r_list_button"> <a
									href="<%=request.getContextPath() %>/cart/cartBuy?id= ${book.id }">
										<img
										src='${pageContext.request.contextPath}/images/buttom_goumai.gif' />
								</a></span> <span id="cartinfo" class="mycartinfo"></span>
								<!--  <A id=favor title=收藏 href="#" name=wishlist_book>
<IMG id=imgfavor src="../product_files/bookz_save.gif"></A>
-->
							</DIV>


						</DIV>
					</DIV>
					<DIV id=dvTPUrls></DIV>
					<DIV id=__zhinengbiaozhu_bk>
						<DIV class=dashed></DIV>
						<H2 class=black14>


							<DIV class=dashed></DIV>
							<H2 class=black14>Content Introduction</H2>
							<DIV class=zhengwen>${book.description }</DIV>
							<DIV class=dashed></DIV>
							<H2 class=black14>Author Introduction</H2>
							<DIV class=zhengwen>${book.author} ${book.author_summary }
							</DIV>
							<DIV class=dashed></DIV>
							<H2 class=black14>Table of Contents</H2>
							<DIV class=zhengwen>${book.catalogue }</DIV>
							<DIV class=dashed></DIV>
							<H2 class=black14>Media Comments</H2>
							<DIV class=zhengwen>It's a very good book</DIV>
							<DIV class=dashed></DIV>
							<H2 class=black14>Digest</H2>
							<DIV class=zhengwen>
								From Wikipedia, the free encyclopedia <BR> A book is a set
								of written, printed, illustrated, or blank sheets, made of ink,
								paper, parchment, or other materials, fastened together to hinge
								at one side. A single sheet within a book is a leaf, and each
								side of a leaf is a page. A set of text-filled or illustrated
								pages produced in electronic format is known as an electronic
								book, or e-book. <BR> Books may also refer to works of
								literature, or a main division of such a work. In library and
								information science, a book is called a monograph, to
								distinguish it from serial periodicals such as magazines,
								journals, or newspapers. The body of all written works including
								books is literature. In novels and sometimes other types of
								books (for example, biographies), a book may be divided into
								several large sections, also called books (Book 1, Book 2, Book
								3, and so on). An avid reader of books is a bibliophile or
								colloquially, bookworm. <BR> ……
							</DIV>
					</DIV>
					<A name=review_point></A>
				</DIV>
			</DIV>
			<DIV id=tag_box style="DISPLAY: none; Z-INDEX: 2; POSITION: absolute"></DIV>
			<DIV id=tag_box_pay
				style="DISPLAY: none; Z-INDEX: 2; POSITION: absolute"></DIV>
			<DIV id=div_shield></DIV>
			<!--页尾 开始 -->
			<DIV class=public_footer_add_s></DIV>
			<!--09.3.10new-->
			<!--页尾 end -->
			<!--页尾开始 -->
			<%@include file="/common/foot.jsp"%>
			<!--页尾结束 -->
</BODY>
</HTML>
