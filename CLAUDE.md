# CLAUDE.md — Sao Việt Pest SEO Content System

## Quy tắc tự động (KHÔNG hỏi, tự xử lý)

- **Viết bài liên tục** từ số hiện tại đến hết danh sách, không dừng hỏi xác nhận giữa các bài
- **WebFetch 403**: bỏ qua URL đó, thử URL tiếp theo trong search results, nếu tất cả fail thì dùng data từ WebSearch để viết — không dừng lại hỏi
- **Thiếu thông tin thực tế** (số liệu, chứng chỉ, giá cả của Sao Việt Pest): dùng `<span class="missing-data">...</span>` màu đỏ — không dừng hỏi
- **Output mỗi bài**: lưu file HTML vào `/home/user/seo-articles/` với tên `[số thứ tự]-[slug].html`
- **Sau mỗi bài**: thông báo ngắn "✓ Xong bài [N] — [từ khóa]" rồi chuyển ngay sang bài tiếp theo
- **Danh sách từ khóa**: đọc từ `/home/user/seo-articles/keywords-21-50.md`

---

## Skill: Viết Bài SEO + GEO — Dịch Vụ Diệt Côn Trùng B2B

### Nguyên tắc cốt lõi

- **Đối tượng duy nhất:** Doanh nghiệp B2B — QA Manager, Operations Director, Facility Manager, Ban quản lý tòa nhà. KHÔNG viết cho hộ gia đình.
- **Tone:** Chuyên nghiệp, kỹ thuật, compliance-first.
- **Pain point chính:** Rủi ro vận hành, tuân thủ tiêu chuẩn (HACCP, BRC, FSSC 22000, ISO 22000), nguy cơ bị thu hồi chứng nhận, gián đoạn sản xuất.
- **Framing:** Pest control = quản lý rủi ro tuân thủ, KHÔNG phải dịch vụ vệ sinh.

---

### Quy trình bắt buộc trước khi viết

**Bước 1 — Search tiếng Việt:** `web_search("[từ khóa tiếng Việt]")`

**Bước 2 — Search tiếng Anh:** `web_search("[English equivalent]")`

**Bước 3 — Fetch 3 bài top (nếu bị 403 thì bỏ qua, dùng search data):**
- Lấy URL #1, #2, #3 từ search tiếng Việt
- Ghi chú: heading structure, topics, content gap, schema type đối thủ dùng

**Mục tiêu:** góc độ đối thủ chưa khai thác, số liệu cite, FAQ phổ biến, content gap.

---

### On-Page SEO Checklist

**Title Tag:** 50–60 ký tự, primary keyword đầu tiên, yếu tố B2B
```
[Từ khóa chính] | Chuẩn [Tiêu chuẩn] cho [Ngành] – Sao Việt Pest
```

**Meta Description:** 150–160 ký tự, primary keyword, pain point B2B, CTA

**URL/Slug:** ngắn, gạch ngang `-`, không dấu, ≤ 5 từ

**H1:** primary keyword, 1 lần duy nhất, 50–70 ký tự
**H2:** secondary keywords, subtopics — không bỏ cấp heading
**H3:** breakout chi tiết dưới H2

**Cấu trúc heading mẫu (Service Hub B2B):**
```
H1: [Primary Keyword] – Chuẩn [Tiêu Chuẩn]
  H2: Tại Sao [Ngành] Cần Kiểm Soát [Loài] Theo Tiêu Chuẩn?
    H3: Nguy cơ mất chứng nhận vì [loài côn trùng]
    H3: Chi phí xử lý khủng hoảng vs. hợp đồng định kỳ
  H2: Quy Trình [Dịch Vụ] Chuyên Nghiệp Của Sao Việt Pest
    H3: Khảo sát và lập báo cáo hiện trạng
    H3: Xử lý bằng hóa chất được phép lưu hành
    H3: Báo cáo kết quả và hồ sơ lưu audit
  H2: Các Ngành Doanh Nghiệp Chúng Tôi Phục Vụ
  H2: Câu Hỏi Thường Gặp (FAQ)
  H2: Liên Hệ Nhận Báo Giá
```

**Nội dung:**
- Service page: 1.000–1.500 từ; Blog/Pillar: 1.500–2.500 từ
- Primary keyword trong 100 từ đầu, mật độ 1–2%
- LSI: côn trùng gây hại, kiểm soát dịch hại, hóa chất được phép, kiểm tra định kỳ, hồ sơ kỹ thuật
- Không dùng số liệu bịa đặt
- Tiêu chuẩn thực tế: HACCP, BRC Global Standard, FSSC 22000, ISO 22000, TCVN
- Hóa chất phải được phép lưu hành tại Việt Nam
- KHÔNG viết cho hộ gia đình — phát hiện câu nào hướng đến nhà dân → xóa/viết lại

**Internal Links (3–5 contextual link trong nội dung):**
- → Pillar `/dich-vu-diet-con-trung` ít nhất 1 lần
- → Cross-cluster 1–2 lần
- → `/bang-gia-diet-con-trung` hoặc `/lien-he` ở CTA cuối bài
- Anchor text: mô tả từ khóa, KHÔNG dùng "xem thêm", "click vào đây"

---

### GEO Checklist (Generative Engine Optimization)

**E-E-A-T:**
- Experience: số năm kinh nghiệm, số doanh nghiệp đã phục vụ
- Expertise: kỹ thuật viên được đào tạo, hóa chất đạt chuẩn Bộ Y tế
- Authority: link ra nguồn uy tín (WHO, Cục BVTV, tổ chức cấp chứng nhận)
- Trust: chứng nhận, địa chỉ, MST

**Cấu trúc thân thiện AI:**
- Đoạn mở ≤ 100 từ, trả lời thẳng câu hỏi chính
- Định nghĩa súc tích ngay sau H2
- Bảng so sánh, bullet list (3–7 điểm)
- FAQ: H3 = câu hỏi, đoạn đầu H3 = câu trả lời trực tiếp ≤ 60 từ
- Không câu mơ hồ — câu dứt khoát
- Số liệu cụ thể ("300+ doanh nghiệp", "12 năm kinh nghiệm")
- Mỗi H2 section tự đứng được (đọc độc lập được)

**FAQPage schema bắt buộc** — Google AI Overview ưu tiên kéo từ schema.

---

### Schema JSON-LD Templates

**Service Hub Page:**
```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Service",
      "name": "...",
      "description": "...",
      "provider": {
        "@type": "LocalBusiness",
        "name": "Công ty Kiểm soát Côn trùng Sao Việt",
        "url": "https://saovietpest.vn",
        "telephone": "...",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Thành phố Hồ Chí Minh",
          "addressCountry": "VN"
        }
      },
      "areaServed": ["Thành phố Hồ Chí Minh", "Bình Dương", "Đồng Nai"],
      "serviceType": "Pest Control"
    },
    {
      "@type": "BreadcrumbList",
      "itemListElement": [
        {"@type": "ListItem", "position": 1, "name": "Trang chủ", "item": "https://saovietpest.vn"},
        {"@type": "ListItem", "position": 2, "name": "Dịch vụ", "item": "https://saovietpest.vn/dich-vu-diet-con-trung"},
        {"@type": "ListItem", "position": 3, "name": "...", "item": "https://saovietpest.vn/..."}
      ]
    },
    {
      "@type": "FAQPage",
      "mainEntity": [
        {
          "@type": "Question",
          "name": "...",
          "acceptedAnswer": {"@type": "Answer", "text": "..."}
        }
      ]
    }
  ]
}
```

**Blog/Article:**
```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Article",
      "headline": "...",
      "description": "...",
      "author": {"@type": "Organization", "name": "Sao Việt Pest"},
      "publisher": {
        "@type": "Organization",
        "name": "Sao Việt Pest",
        "logo": {"@type": "ImageObject", "url": "https://saovietpest.vn/logo.png"}
      },
      "datePublished": "2025-06-11",
      "dateModified": "2025-06-11",
      "mainEntityOfPage": "https://saovietpest.vn/..."
    },
    {"@type": "FAQPage", "mainEntity": []}
  ]
}
```

---

### Output Format: HTML Đầy Đủ (bắt buộc)

```html
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>[Title — 50-60 ký tự]</title>
  <meta name="description" content="[150-160 ký tự]">
  <meta name="robots" content="index, follow">
  <link rel="canonical" href="https://saovietpest.vn/[slug]">
  <meta property="og:title" content="[OG Title]">
  <meta property="og:description" content="[OG Description]">
  <meta property="og:type" content="article">
  <meta property="og:url" content="https://saovietpest.vn/[slug]">
  <script type="application/ld+json">{ ... }</script>
  <style>
    body { font-family: Arial, sans-serif; max-width: 900px; margin: 0 auto; padding: 20px; line-height: 1.7; color: #333; }
    h1 { font-size: 2em; color: #1a1a2e; }
    h2 { font-size: 1.5em; color: #16213e; border-bottom: 2px solid #e8f4f8; padding-bottom: 8px; margin-top: 40px; }
    h3 { font-size: 1.2em; color: #0f3460; }
    table { width: 100%; border-collapse: collapse; margin: 20px 0; }
    th { background: #0f3460; color: white; padding: 12px; text-align: left; }
    td { padding: 10px 12px; border-bottom: 1px solid #ddd; }
    tr:nth-child(even) { background: #f8f9fa; }
    .cta-box { background: #e8f4f8; border-left: 4px solid #0f3460; padding: 20px; margin: 30px 0; border-radius: 4px; }
    .missing-data { color: #cc0000; font-weight: bold; }
  </style>
</head>
<body>
  <nav aria-label="breadcrumb">
    <a href="/">Trang chủ</a> &rsaquo;
    <a href="/dich-vu-diet-con-trung">Dịch vụ</a> &rsaquo;
    <span>[Tên trang]</span>
  </nav>
  <article>
    <h1>[H1]</h1>
    <!-- NỘI DUNG CHÍNH -->
    <section id="faq"><h2>Câu Hỏi Thường Gặp</h2></section>
    <div class="cta-box"><!-- CTA --></div>
  </article>
</body>
</html>
```

---

### Xử lý missing-data

Thông tin chưa có của Sao Việt Pest → dùng:
```html
<span class="missing-data">...</span>
```
Danh sách hay thiếu: số năm kinh nghiệm, số KH B2B, chứng nhận/giấy phép, MST, địa chỉ, hotline, email, giá dịch vụ, tên KH tham chiếu.

---

### B2B Messaging Framework

| Ngành | Pain Point | Compliance |
|-------|-----------|------------|
| Nhà hàng / F&B | Mất chứng nhận HACCP, bị thanh tra | HACCP, vệ sinh ATTP |
| Nhà máy sản xuất | Gián đoạn dây chuyền, lô hàng bị trả về | BRC, FSSC 22000, GMP |
| Khách sạn / Resort | Review xấu, mất khách | ISO 22000, star rating |
| Kho lạnh / Logistics | Hàng hóa bị nhiễm, bồi thường | HACCP, kiểm soát nhiệt độ |
| Dược phẩm / Y tế | GMP vi phạm, thu hồi sản phẩm | GMP, FDA, WHO-GMP |

**B2C sai → B2B đúng:**
- ❌ "Nhà bạn sẽ sạch hơn..."
- ✅ "Mỗi lần côn trùng xuất hiện trong khu vực sản xuất là một sự kiện phải ghi vào hồ sơ audit..."

**CTA Block mẫu:**
```
Doanh nghiệp cần hồ sơ kiểm soát côn trùng đầy đủ cho audit sắp tới?
✔ Hợp đồng định kỳ có SLA rõ ràng
✔ Báo cáo kỹ thuật đạt yêu cầu HACCP / BRC
✔ Đội kỹ thuật được chứng nhận, hóa chất đăng ký hợp lệ
→ Nhận báo giá miễn phí — Phản hồi trong 2 giờ làm việc
→ Tải hồ sơ năng lực (PDF)
```

---

### Lỗi thường gặp cần tránh

| Lỗi | Cách sửa |
|-----|----------|
| Viết "nhà bạn", "gia đình bạn" | Đổi thành "cơ sở của bạn", "doanh nghiệp của bạn" |
| Số liệu không có nguồn | Xóa hoặc thêm nguồn thực tế |
| Hóa chất bị cấm (Chlorpyrifos, DDT) | Xóa, chỉ đề cập nhóm được phép |
| Meta description > 160 ký tự | Rút ngắn |
| Internal link dùng "click vào đây" | Viết lại anchor mô tả |
| Không có FAQ schema | Thêm FAQPage JSON-LD |
