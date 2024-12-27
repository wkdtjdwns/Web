# React의 구조

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>React + TypeScript + Replit</title>
  </head>
  <body>
    <div id="root"></div>
    <script type="module" src="/src/index.jsx"></script>
  </body>
</html>
```

- **위의 index.html에서 ‘root’는 아래의 index.jsx로 연결됨.
(jsx: JavaScript eXtension; 자바스크립트 확장)**
    
    ```jsx
    import React from 'react'
    import ReactDOM from 'react-dom/client'
    import App from './App'
    
    ReactDOM.createRoot(document.getElementById('root')).render(
    	<React.StrictMode>
    		<App />
    	</React.StrictMode>
    )
    ```
    
- **그리고 위의 index.jsx의 root는 아래의 App.jsx로 연결됨.**
    
    ```jsx
    import "./App.css";
    
    export default function App() {
      return <main>⚡⚡⚡⚡⚡⚡⚡⚡</main>;
    }
    
    ```
    
- ⭐ **한 마디로 App.jsx를 수정하면 페이지에 나오게 되는 것임!** ⭐
- **또한 App.css를 수정하면 때문에 스타일이 먹힘.**
