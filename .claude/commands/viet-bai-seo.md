# Skill: Viết Bài SEO + GEO — Dịch Vụ Diệt Côn Trùng B2B (Sao Việt Pest)

Đây là slash command `/viet-bai-seo`. Khi được gọi, thực hiện đúng quy trình dưới đây để viết bài SEO/GEO chuẩn cho saovietpest.vn.

---

## Cách dùng

```
/viet-bai-seo [số thứ tự hoặc từ khóa]
```

Ví dụ:
- `/viet-bai-seo 21` → viết bài cho từ khóa số 21
- `/viet-bai-seo tất cả` → viết liên tục từ bài chưa có đến hết danh sách
- `/viet-bai-seo diệt muỗi tại TPHCM` → viết bài cho từ khóa cụ thể

Danh sách từ khóa: đọc từ `/home/user/seo-articles/keywords-21-50.md`
Output: lưu vào `/home/user/seo-articles/[số]-[slug].html`

---

## Quy tắc tự động (không hỏi xác nhận)

- WebFetch 403 → bỏ qua, thử URL khác, nếu hết → dùng search data
- Thiếu data thực tế → `<span class="missing-data">...</span>`
- Viết liên tục đến hết, sau mỗi bài thông báo ngắn rồi chuyển ngay bài tiếp

---

## Bước 0: Research SERP (bắt buộc trước khi viết)

1. `web_search("[từ khóa tiếng Việt]")`
2. `web_search("[English equivalent]")`
3. Fetch URL #1, #2, #3 từ kết quả (bỏ qua nếu 403)
4. Ghi chú: heading structure, content gap, FAQ phổ biến, schema đối thủ

---

## Nguyên tắc viết B2B

- **Đối tượng:** QA Manager, Operations Director, Facility Manager — KHÔNG phải hộ gia đình
- **Tone:** Chuyên nghiệp, kỹ thuật, compliance-first
- **Framing:** Pest control = quản lý rủi ro tuân thủ
- **Pain point:** Mất chứng nhận HACCP/BRC/FSSC 22000, gián đoạn sản xuất, rủi ro audit

---

## On-Page SEO

| Yếu tố | Yêu cầu |
|--------|---------|
| Title | 50–60 ký tự, primary keyword đầu tiên |
| Meta description | 150–160 ký tự, có CTA |
| H1 | Primary keyword, 1 lần, 50–70 ký tự |
| H2 | Secondary keywords, không bỏ cấp |
| Nội dung | Service page 1.000–1.500 từ; Blog 1.500–2.500 từ |
| Internal links | 3–5 contextual links, anchor mô tả |
| CTA cuối | Link về /lien-he hoặc /bang-gia-diet-con-trung |

---

## GEO (AI Visibility)

- Đoạn mở ≤ 100 từ trả lời thẳng câu hỏi chính
- FAQ: H3 = câu hỏi, đầu H3 = câu trả lời ≤ 60 từ
- Bảng so sánh và bullet list (3–7 điểm) — AI ưu tiên trích xuất
- Số liệu cụ thể: "300+ doanh nghiệp", "12 năm kinh nghiệm"
- FAQPage schema JSON-LD bắt buộc

---

## Output Format: HTML đầy đủ

File HTML hợp lệ với:
- `<!DOCTYPE html>` + `</html>` đóng
- `<title>` 50–60 ký tự
- `<meta name="description">` 150–160 ký tự
- `<link rel="canonical">` đúng URL
- Schema JSON-LD trong `<script type="application/ld+json">` ở `<head>`
- CSS inline có `.missing-data { color: #cc0000; font-weight: bold; }`
- Breadcrumb nav
- Article với H1, nội dung, FAQ, CTA block

---

## Schema Templates

**Service page:** `Service` + `LocalBusiness` + `BreadcrumbList` + `FAQPage`

**Blog:** `Article` + `FAQPage` + `BreadcrumbList`

areaServed: `["Thành phố Hồ Chí Minh", "Bình Dương", "Đồng Nai"]`

provider.name: `"Công ty Kiểm soát Côn trùng Sao Việt"`

provider.url: `"https://saovietpest.vn"`

---

## B2B Pain Points theo ngành

| Ngành | Pain Point | Tiêu chuẩn |
|-------|-----------|------------|
| Nhà hàng / F&B | Mất HACCP, bị thanh tra | HACCP, ATTP |
| Nhà máy | Gián đoạn dây chuyền, hàng bị trả | BRC, FSSC 22000, GMP |
| Khách sạn | Review xấu, tiêu chuẩn sao | ISO 22000 |
| Kho lạnh | Hàng nhiễm, bồi thường | HACCP |
| Dược phẩm | GMP vi phạm, thu hồi SP | GMP, WHO-GMP |

---

## Lỗi cần tránh

- "nhà bạn", "gia đình bạn" → "cơ sở của bạn", "doanh nghiệp của bạn"
- Số liệu không nguồn → xóa hoặc class="missing-data"
- Hóa chất bị cấm (Chlorpyrifos, DDT) → không đề cập
- Anchor "xem thêm tại đây" → viết anchor mô tả từ khóa
- Duplicate title → mỗi trang title unique
