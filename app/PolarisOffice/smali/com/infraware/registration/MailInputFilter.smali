.class public Lcom/infraware/registration/MailInputFilter;
.super Ljava/lang/Object;
.source "MailInputFilter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private filters:[Landroid/text/InputFilter;

.field private m_MaxLength:I

.field private m_ToastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/infraware/registration/MailInputFilter;->filters:[Landroid/text/InputFilter;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/registration/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 14
    const/16 v0, 0x80

    iput v0, p0, Lcom/infraware/registration/MailInputFilter;->m_MaxLength:I

    .line 22
    iput-object p1, p0, Lcom/infraware/registration/MailInputFilter;->context:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/infraware/registration/MailInputFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/infraware/registration/MailInputFilter$1;

    invoke-direct {v2, p0}, Lcom/infraware/registration/MailInputFilter$1;-><init>(Lcom/infraware/registration/MailInputFilter;)V

    aput-object v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/infraware/registration/MailInputFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x1

    new-instance v2, Lcom/infraware/registration/MailInputFilter$2;

    invoke-direct {v2, p0}, Lcom/infraware/registration/MailInputFilter$2;-><init>(Lcom/infraware/registration/MailInputFilter;)V

    aput-object v2, v0, v1

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/registration/MailInputFilter;C)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/infraware/registration/MailInputFilter;->isValidChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/registration/MailInputFilter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/infraware/registration/MailInputFilter;->onToastMessage(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/registration/MailInputFilter;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/infraware/registration/MailInputFilter;->m_MaxLength:I

    return v0
.end method

.method private isValidChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 75
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-le p1, v0, :cond_3

    .line 76
    :cond_2
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5f

    if-ne p1, v0, :cond_4

    .line 78
    :cond_3
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onToastMessage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/infraware/registration/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/infraware/registration/MailInputFilter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/registration/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/infraware/registration/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/infraware/registration/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/infraware/registration/MailInputFilter;->filters:[Landroid/text/InputFilter;

    return-object v0
.end method
