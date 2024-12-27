import "./App.css";

// 컴포넌트를 사용하기 위해 컴포넌트 파일 import
import Box from "./Box";

export default function App() {
  return (
    <main>
      { /* React의 class는 className으로 사용함! */ }

      { /* 컴포넌트를 사용하지 않은 코드
      <div className="박스">
        <h1>3일 연애 곽O</h1>
      </div>

      <div className="박스">
        <h1>3일 연애 곽O</h1>
      </div>

      <div className="박스">
        <h1>3일 연애 곽O</h1>
      </div>*/ }

      { /* 컴포넌트를 사용한 코드 */ }
      <Box str="3" />
      { /* str="OOO" -> 매개변수 (이름이 굳이 str이지 않아도 됨.) */ }

      <Box str="4" />
      <Box str="5" />
    </main>
  );
}
