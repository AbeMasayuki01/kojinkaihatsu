<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
  <body>
    <header>
      <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">


        <h5 class="my-0 mr-md-auto font-weight-normal">
        <a href="Home">ABeFlix</a>
        </h5>

        <nav class="my-2 my-md-0 mr-md-3">
          <a class="p-2 text-dark" href="Home">Home</a>
          <a class="p-2 text-dark" href="favoritelist">MyList</a>
          <a class="p-2 text-dark" href="Reviewlist">Review</a>
          <a class="p-2 text-dark" href="Mypage">MyPage</a>
                <div class="input-field col s8 offset-s2">
                    <form action="Serchresult">
                        <i class="material-icons prefix">search</i> <input type="text" name="search_word">
                    </form>
                </div>


        </nav>
      </div>
    </header>
</body>
