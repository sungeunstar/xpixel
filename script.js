// 우측 카테고리 버튼 활성화 토글
document.querySelectorAll('.hero-cats .cat').forEach(btn=>{
  btn.addEventListener('click', ()=>{
    document.querySelectorAll('.hero-cats .cat').forEach(b=>b.classList.remove('is-active'));
    btn.classList.add('is-active');
    // 추후 이 상태를 Work 섹션 필터와 연동할 수 있음
  });
});
