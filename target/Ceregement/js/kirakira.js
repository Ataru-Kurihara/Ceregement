window.addEventListener("DOMContentLoaded", () => {
    // 星を表示するための親要素を取得
    const stars = document.querySelector(".stars");

    // 星を生成する関数
    const createStar = () => {
        const starEl = document.createElement("span");
        starEl.className = "star";
        const minSize = 1; // 星の最小サイズを指定
        const maxSize = 2; // 星の最大サイズを指定
        const size = Math.random() * (maxSize - minSize) + minSize;
        starEl.style.width = `${size}px`;
        starEl.style.height = `${size}px`;
        starEl.style.left = `${Math.random() * 100}%`;
        starEl.style.top = `${Math.random() * 100}%`;
        starEl.style.animationDelay = `${Math.random() * 10}s`;
        stars.appendChild(starEl);
    };

    // for文で星を生成する関数を指定した回数呼び出す
    for (let i = 0; i <= 500; i++) {
        createStar();
    }
});