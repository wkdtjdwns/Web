import React from "react";

// App.jsx에 있던 div 태그를 "컴포넌트"로 만들어서 관리함. (React의 최고 장점!)
// "컴포넌트는 그냥 '함수'라고 생각하면 편함."
export default function Box(props) { // props: 매개변수
  // 함수 만들기
  function ClickMe() {
    alert(props.str);
  }

  return (
    <div className="box">
      <h1>{props.str}일 연애 O권</h1>

      { /* 함수 사용 */ }
      <button onClick={ClickMe}>Click!</button>
    </div>
  );
}

// 위에서 이미 export default를 사용해서 안 써도 됨.
// export default Box();
