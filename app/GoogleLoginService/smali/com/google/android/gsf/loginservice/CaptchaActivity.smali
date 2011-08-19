.class public Lcom/google/android/gsf/loginservice/CaptchaActivity;
.super Lcom/google/android/gsf/loginservice/BaseActivity;
.source "CaptchaActivity.java"


# instance fields
.field private mAnswer:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/loginservice/CaptchaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->submit()V

    return-void
.end method

.method private submit()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->authenticate()V

    .line 72
    return-void
.end method


# virtual methods
.method protected doCaptchaActivity()V
    .locals 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v3, v3, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, img:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    .end local v0           #img:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mAnswer:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x3

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->requestWindowFeature(I)Z

    .line 43
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 47
    const v1, 0x7f0c0048

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mImageView:Landroid/widget/ImageView;

    .line 48
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mAnswer:Landroid/widget/EditText;

    .line 49
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/CaptchaActivity;->mAnswer:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/gsf/loginservice/CaptchaActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/loginservice/CaptchaActivity$1;-><init>(Lcom/google/android/gsf/loginservice/CaptchaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, b:Landroid/widget/Button;
    new-instance v1, Lcom/google/android/gsf/loginservice/CaptchaActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/loginservice/CaptchaActivity$2;-><init>(Lcom/google/android/gsf/loginservice/CaptchaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/CaptchaActivity;->doCaptchaActivity()V

    .line 66
    return-void
.end method
