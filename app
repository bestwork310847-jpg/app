import streamlit as st

# =================================
# PAGE CONFIG
# =================================

st.set_page_config(
    page_title="Financial Planning System",
    layout="centered"
)

st.title("Comprehensive Financial Planning System")

# =================================
# PART 1 — PERSONAL INFORMATION
# =================================

st.header("1. Personal Information")

name = st.text_input("ชื่อ-นามสกุล")

age = st.number_input("อายุ", 1, 100)

gender = st.selectbox(
    "เพศ",
    ["ชาย", "หญิง", "อื่นๆ"]
)

marital = st.selectbox(
    "สถานภาพสมรส",
    ["โสด", "แต่งงาน", "หย่าร้าง", "หม้าย"]
)

children = st.number_input(
    "จำนวนบุตร",
    0,
    20
)

dependents = st.number_input(
    "จำนวนผู้พึ่งพิง",
    0,
    20
)

province = st.text_input("จังหวัดที่อาศัย")

retire_age = st.number_input(
    "อายุที่ต้องการเกษียณ",
    30,
    100
)

education = st.selectbox(
    "ระดับการศึกษา",
    [
        "ต่ำกว่ามัธยม",
        "มัธยม",
        "ปวช./ปวส.",
        "ปริญญาตรี",
        "ปริญญาโท",
        "ปริญญาเอก"
    ]
)

job = st.selectbox(
    "อาชีพ",
    [
        "ข้าราชการ",
        "พนักงานบริษัท",
        "เจ้าของธุรกิจ",
        "ฟรีแลนซ์",
        "นักลงทุน",
        "เกษียณ"
    ]
)

job_stability = st.selectbox(
    "ความมั่นคงของอาชีพ",
    [
        "สูง",
        "ปานกลาง",
        "ต่ำ"
    ]
)

health_problem = st.selectbox(
    "มีโรคประจำตัวหรือไม่",
    ["ไม่มี", "มี"]
)

# =================================
# PART 2 — INCOME
# =================================

st.header("2. Income & Financial Stability")

monthly_income = st.number_input(
    "รายได้หลักต่อเดือน",
    min_value=0
)

bonus = st.number_input(
    "โบนัสต่อปี",
    min_value=0
)

side_income = st.number_input(
    "รายได้เสริมต่อเดือน",
    min_value=0
)

passive_income = st.number_input(
    "Passive Income ต่อเดือน",
    min_value=0
)

income_stability = st.selectbox(
    "ความสม่ำเสมอของรายได้",
    [
        "สม่ำเสมอมาก",
        "ค่อนข้างสม่ำเสมอ",
        "ผันผวน",
        "ผันผวนสูง"
    ]
)

emergency_month = st.number_input(
    "เงินสำรองฉุกเฉินเพียงพอกี่เดือน",
    0,
    60
)

layoff_risk = st.selectbox(
    "โอกาสถูกเลิกจ้าง",
    [
        "ต่ำ",
        "ปานกลาง",
        "สูง"
    ]
)

# =================================
# PART 3 — EXPENSE
# =================================

st.header("3. Expense & Cash Flow")

expense = st.number_input(
    "ค่าใช้จ่ายรวมต่อเดือน",
    min_value=0
)

saving = st.number_input(
    "เงินออมต่อเดือน",
    min_value=0
)

overspend = st.selectbox(
    "เคยมีปัญหาเงินไม่พอใช้หรือไม่",
    [
        "ไม่เคย",
        "บางครั้ง",
        "บ่อย"
    ]
)

credit_overuse = st.selectbox(
    "ใช้บัตรเครดิตเกินกำลังหรือไม่",
    [
        "ไม่เคย",
        "บางครั้ง",
        "บ่อย"
    ]
)

# =================================
# PART 4 — ASSETS
# =================================

st.header("4. Assets")

cash = st.number_input("เงินสด", min_value=0)

deposit = st.number_input("เงินฝาก", min_value=0)

thai_stock = st.number_input("หุ้นไทย", min_value=0)

foreign_stock = st.number_input("หุ้นต่างประเทศ", min_value=0)

crypto = st.number_input("Crypto", min_value=0)

gold = st.number_input("ทองคำ", min_value=0)

real_estate = st.number_input("อสังหาริมทรัพย์", min_value=0)

# =================================
# PART 5 — LIABILITIES
# =================================

st.header("5. Liabilities")

home_debt = st.number_input(
    "หนี้บ้าน",
    min_value=0
)

car_debt = st.number_input(
    "หนี้รถ",
    min_value=0
)

credit_debt = st.number_input(
    "หนี้บัตรเครดิต",
    min_value=0
)

personal_debt = st.number_input(
    "หนี้ส่วนบุคคล",
    min_value=0
)

monthly_installment = st.number_input(
    "ค่างวดรวมต่อเดือน",
    min_value=0
)

default_history = st.selectbox(
    "เคยผิดนัดชำระหรือไม่",
    ["ไม่เคย", "เคย"]
)

# =================================
# PART 6 — INSURANCE
# =================================

st.header("6. Emergency Fund & Insurance")

life_insurance = st.selectbox(
    "มีประกันชีวิตหรือไม่",
    ["ไม่มี", "มี"]
)

health_insurance = st.selectbox(
    "มีประกันสุขภาพหรือไม่",
    ["ไม่มี", "มี"]
)

critical_illness = st.selectbox(
    "มีประกันโรคร้ายแรงหรือไม่",
    ["ไม่มี", "มี"]
)

# =================================
# PART 7 — INVESTMENT EXPERIENCE
# =================================

st.header("7. Investment Experience")

investment_exp = st.selectbox(
    "เคยลงทุนหรือไม่",
    ["ไม่เคย", "เคย"]
)

market_reaction = st.radio(
    "หากพอร์ตลงทุนลดลง 20% ภายในระยะเวลาอันสั้น คุณจะ?",
    [
        "ซื้อเพิ่มเพราะมองเป็นโอกาส",
        "ถือไว้และรอดูสถานการณ์",
        "เริ่มกังวลและลดการลงทุนบางส่วน",
        "ขายทั้งหมดทันที"
    ]
)

investment_decision = st.radio(
    "อะไรมีผลต่อการตัดสินใจลงทุนของคุณมากที่สุด?",
    [
        "วิเคราะห์ข้อมูลด้วยตนเอง",
        "คำแนะนำจากผู้เชี่ยวชาญ",
        "แนวโน้มตลาดและข่าวเศรษฐกิจ",
        "กระแสในโซเชียลหรือคนรอบตัว"
    ]
)

# =================================
# INVESTMENT KNOWLEDGE TEST
# =================================

st.subheader("Investment Knowledge Assessment")

knowledge_score = 0

knowledge_q1 = st.radio(
    "1. หุ้นและพันธบัตรแตกต่างกันอย่างไร?",
    [
        "ไม่แน่ใจ",
        "หุ้นมีความผันผวนและความเสี่ยงสูงกว่า",
        "พันธบัตรเสี่ยงกว่าหุ้น",
        "เหมือนกันทั้งหมด"
    ]
)

if knowledge_q1 == "หุ้นมีความผันผวนและความเสี่ยงสูงกว่า":
    knowledge_score += 1

knowledge_q2 = st.radio(
    "2. Diversification มีจุดประสงค์หลักเพื่ออะไร?",
    [
        "เพิ่มความเสี่ยง",
        "ลดความเสี่ยงของพอร์ต",
        "ทำกำไรระยะสั้น",
        "ไม่แน่ใจ"
    ]
)

if knowledge_q2 == "ลดความเสี่ยงของพอร์ต":
    knowledge_score += 1

knowledge_q3 = st.radio(
    "3. หากอัตราดอกเบี้ยปรับตัวสูงขึ้น สินทรัพย์ใดมักได้รับผลกระทบมาก?",
    [
        "พันธบัตร",
        "เงินสด",
        "ไม่แน่ใจ",
        "ทุกสินทรัพย์เท่ากัน"
    ]
)

if knowledge_q3 == "พันธบัตร":
    knowledge_score += 1

knowledge_q4 = st.radio(
    "4. การลงทุนระยะยาวช่วยอะไรได้มากที่สุด?",
    [
        "ลดผลกระทบจากความผันผวนระยะสั้น",
        "การันตีกำไร",
        "หลีกเลี่ยงความเสี่ยงทั้งหมด",
        "ไม่แน่ใจ"
    ]
)

if knowledge_q4 == "ลดผลกระทบจากความผันผวนระยะสั้น":
    knowledge_score += 1

knowledge_q5 = st.radio(
    "5. ETF คืออะไร?",
    [
        "กองทุนที่ซื้อขายในตลาดหุ้น",
        "คริปโตประเภทหนึ่ง",
        "ตราสารหนี้รัฐบาล",
        "ไม่แน่ใจ"
    ]
)

if knowledge_q5 == "กองทุนที่ซื้อขายในตลาดหุ้น":
    knowledge_score += 1

knowledge_q6 = st.radio(
    "6. หากคุณไม่เข้าใจสินทรัพย์หนึ่ง คุณจะ?",
    [
        "ศึกษาข้อมูลเพิ่มเติมก่อนลงทุน",
        "ลงทุนตามกระแส",
        "ลงทุนทันทีเพราะคนอื่นกำไร",
        "หลีกเลี่ยงทุกอย่าง"
    ]
)

if knowledge_q6 == "ศึกษาข้อมูลเพิ่มเติมก่อนลงทุน":
    knowledge_score += 1

st.subheader("Assessment Result")

if knowledge_score <= 2:
    investment_knowledge = "Beginner"
    st.warning("ระดับความรู้การลงทุน: Beginner")

elif knowledge_score <= 4:
    investment_knowledge = "Intermediate"
    st.info("ระดับความรู้การลงทุน: Intermediate")

else:
    investment_knowledge = "Advanced"
    st.success("ระดับความรู้การลงทุน: Advanced")

st.write(f"Knowledge Score: {knowledge_score}/6")

# =================================
# PART 8 — BEHAVIORAL RISK
# =================================

st.header("8. Behavioral Risk Assessment")

behavior_score = 0

portfolio_drop = st.radio(
    "หากพอร์ตลงทุนลดลง 20% ภายใน 1 เดือน คุณจะทำอย่างไร?",
    [
        "ขายทั้งหมดทันที",
        "ขายบางส่วนเพื่อลดความเสี่ยง",
        "ถือไว้และรอดู",
        "ซื้อเพิ่มเพราะมองเป็นโอกาส"
    ]
)

if portfolio_drop == "ขายทั้งหมดทันที":
    behavior_score += 1

elif portfolio_drop == "ขายบางส่วนเพื่อลดความเสี่ยง":
    behavior_score += 2

elif portfolio_drop == "ถือไว้และรอดู":
    behavior_score += 3

elif portfolio_drop == "ซื้อเพิ่มเพราะมองเป็นโอกาส":
    behavior_score += 4

market_crash = st.radio(
    "หากตลาดตกหนักต่อเนื่องหลายเดือน คุณจะ?",
    [
        "หยุดลงทุนทั้งหมด",
        "ลดการลงทุน",
        "ลงทุนเท่าเดิม",
        "เพิ่มการลงทุน"
    ]
)

if market_crash == "หยุดลงทุนทั้งหมด":
    behavior_score += 1

elif market_crash == "ลดการลงทุน":
    behavior_score += 2

elif market_crash == "ลงทุนเท่าเดิม":
    behavior_score += 3

elif market_crash == "เพิ่มการลงทุน":
    behavior_score += 4

volatility = st.radio(
    "คุณรับความผันผวนของพอร์ตได้ระดับไหน?",
    [
        "ขาดทุนเล็กน้อยก็เครียด",
        "รับได้บ้าง",
        "รับได้ค่อนข้างมาก",
        "รับความผันผวนสูงได้"
    ]
)

if volatility == "ขาดทุนเล็กน้อยก็เครียด":
    behavior_score += 1

elif volatility == "รับได้บ้าง":
    behavior_score += 2

elif volatility == "รับได้ค่อนข้างมาก":
    behavior_score += 3

elif volatility == "รับความผันผวนสูงได้":
    behavior_score += 4

investment_style = st.radio(
    "สไตล์การลงทุนของคุณใกล้เคียงแบบไหน?",
    [
        "เน้นรักษาเงินต้น",
        "สมดุลระหว่างความเสี่ยงและผลตอบแทน",
        "ต้องการผลตอบแทนสูง",
        "ยอมเสี่ยงสูงเพื่อผลตอบแทนสูงมาก"
    ]
)

if investment_style == "เน้นรักษาเงินต้น":
    behavior_score += 1

elif investment_style == "สมดุลระหว่างความเสี่ยงและผลตอบแทน":
    behavior_score += 2

elif investment_style == "ต้องการผลตอบแทนสูง":
    behavior_score += 3

elif investment_style == "ยอมเสี่ยงสูงเพื่อผลตอบแทนสูงมาก":
    behavior_score += 4

# =================================
# PART 9 — FINANCIAL GOALS
# =================================

st.header("9. Financial Goals")

main_goal = st.text_input(
    "เป้าหมายทางการเงินหลัก"
)

goal_return = st.number_input(
    "เป้าหมายผลตอบแทนต่อปี (%)",
    min_value=0.0
)

invest_year = st.number_input(
    "ระยะเวลาการลงทุน (ปี)",
    min_value=0
)

# =================================
# PART 10 — TAX
# =================================

st.header("10. Tax Planning")

salary_year = st.number_input(
    "เงินเดือนต่อปี",
    min_value=0
)

ssf = st.selectbox(
    "ลงทุน SSF หรือไม่",
    ["ไม่ลงทุน", "ลงทุน"]
)

rmf = st.selectbox(
    "ลงทุน RMF หรือไม่",
    ["ไม่ลงทุน", "ลงทุน"]
)

# =================================
# PART 11 — RETIREMENT
# =================================

st.header("11. Retirement Planning")

retirement_expense = st.number_input(
    "ค่าใช้จ่ายหลังเกษียณต่อเดือน",
    min_value=0
)

retirement_saving = st.number_input(
    "เงินเกษียณปัจจุบัน",
    min_value=0
)

life_expectancy = st.number_input(
    "คาดหวังอายุขัย",
    50,
    120
)

# =================================
# ANALYZE BUTTON
# =================================

if st.button("Analyze Financial Risk"):

    risks = []

    # =================================
    # INCOME RISK
    # =================================

    if income_stability == "ผันผวนสูง":
        risks.append("⚠️ Income Risk สูง")

    elif income_stability == "ผันผวน":
        risks.append("⚠️ Income Risk ปานกลาง")

    else:
        risks.append("✅ Income Risk ต่ำ")

    # =================================
    # LIQUIDITY RISK
    # =================================

    if emergency_month < 3:
        risks.append("⚠️ Liquidity Risk สูง")

    elif emergency_month < 6:
        risks.append("⚠️ Liquidity Risk ปานกลาง")

    else:
        risks.append("✅ Liquidity Risk ต่ำ")

    # =================================
    # DEBT RISK
    # =================================

    total_debt = (
        home_debt
        + car_debt
        + credit_debt
        + personal_debt
    )

    if monthly_income > 0:

        dti = monthly_installment / monthly_income

        if dti > 0.5:
            risks.append("⚠️ Debt Risk สูง")

        elif dti > 0.3:
            risks.append("⚠️ Debt Risk ปานกลาง")

        else:
            risks.append("✅ Debt Risk ต่ำ")

    # =================================
    # MARKET RISK
    # =================================

    risky_assets = (
        thai_stock
        + foreign_stock
        + crypto
    )

    total_assets = (
        cash
        + deposit
        + thai_stock
        + foreign_stock
        + crypto
        + gold
        + real_estate
    )

    if total_assets > 0:

        risky_ratio = risky_assets / total_assets

        if risky_ratio > 0.7:
            risks.append("⚠️ Market Risk สูง")

        elif risky_ratio > 0.4:
            risks.append("⚠️ Market Risk ปานกลาง")

        else:
            risks.append("✅ Market Risk ต่ำ")

    # =================================
    # BEHAVIORAL RISK
    # =================================

    if behavior_score <= 6:
        risks.append("⚠️ Behavioral Risk สูง")

    elif behavior_score <= 10:
        risks.append("⚠️ Behavioral Risk ปานกลาง")

    else:
        risks.append("✅ Behavioral Risk ต่ำ")

    # =================================
    # RETIREMENT RISK
    # =================================

    if retire_age - age < 10:
        risks.append("⚠️ Retirement Risk สูง")

    # =================================
    # HEALTH RISK
    # =================================

    if health_problem == "มี":
        risks.append("⚠️ Health Risk สูง")

    # =================================
    # PORTFOLIO SCORE
    # =================================

    portfolio_score = 0

    # อายุ
    if age < 35:
        portfolio_score += 2

    elif age < 50:
        portfolio_score += 1

    # Behavioral
    portfolio_score += behavior_score

    # Investment Knowledge
    if investment_knowledge == "Advanced":
        portfolio_score += 3

    elif investment_knowledge == "Intermediate":
        portfolio_score += 2

    else:
        portfolio_score += 1

    # Income Stability
    if income_stability == "สม่ำเสมอมาก":
        portfolio_score += 2

    elif income_stability == "ค่อนข้างสม่ำเสมอ":
        portfolio_score += 1

    # Debt Analysis
    if monthly_income > 0:

        dti = monthly_installment / monthly_income

        if dti > 0.5:
            portfolio_score -= 3

        elif dti > 0.3:
            portfolio_score -= 1

    # Emergency Fund
    if emergency_month >= 6:
        portfolio_score += 2

    elif emergency_month >= 3:
        portfolio_score += 1

    # =================================
    # FINAL PORTFOLIO RECOMMENDATION
    # =================================

    if portfolio_score <= 8:
        portfolio = "Conservative Portfolio"

    elif portfolio_score <= 15:
        portfolio = "Moderate Portfolio"

    else:
        portfolio = "Aggressive Portfolio"

    # =================================
    # OUTPUT
    # =================================

    st.success("Financial Analysis Completed")

    st.header("12. Risk Analysis Output")

    for r in risks:
        st.write(r)

    st.header("Portfolio Recommendation")

    st.success(portfolio)

    st.write(f"Portfolio Score: {portfolio_score}")

