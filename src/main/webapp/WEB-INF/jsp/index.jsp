<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<h1>Wellcome to Bulgarian Silicon Valley</h1>
<h4>Here is one place to follow latest Rss feeds in Bulgarian IT life </h4>
<p><b><i>Your benefit is:</i></b></p>

<ul>
	<li>easily stay informed by retrieving the latest content from the sites you are interested in;</li>
	<li>save time by not needing to visit each site individually;</li>
	<li>ensure your privacy, by not needing to join each site's email newsletter;</li>
</ul>

<span>Hint RSS example: </span><a href="http://www.bta.bg/en/rss/free" target="_blank" >BTA | </a><a href="https://sports.yahoo.com/top/rss" target="_blank" >Yahoo</a>
<br/>
<hr/>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>Date</th>
			<th>Item</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${items}" var="item">
			<tr>
				<td>
					<c:out value="${item.publishedDate}" />
					<br />
					<c:out value="${item.blog.name}" />
				</td>
				<td>
					<strong>
						<a href="<c:out value="${item.link}" />" target="_blank">
							<c:out value="${item.title}" />
						</a>
					</strong>
					<br />
					${item.description}
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<hr/>
