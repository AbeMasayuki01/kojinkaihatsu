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

          <form action="/search">
            <input class="serchbox" placeholder="タイトル、人名、ジャンル" title="serchbox"  autocomplete="off" maxlength="2048" size="25" type="text">
            <button class="ab_button" aria-label="検索ボタン" name="btnGNS" type="submit">
              <span><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAg0lEQVR4AWLwySwcEAxotw4wAAiBKIBeZY6wR5mbzg3XztLAZ5f4ffBjUKXXqJJhw4b1cJfsqI57YtXzGDzgTxQd7pKQYaz2gAUlG65Bt/oJ8GQUH/0xYzjwxqR0WJ+xfo/Fp5pwjxHXvFzQdsne6hdDnA9zcISpeElgwEsG+wdi2PADY3DfLvm/H5cAAAAASUVORK5CYII=">
              </span>
            </button>
          </form>

        </nav>
      </div>
    </header>
</body>
