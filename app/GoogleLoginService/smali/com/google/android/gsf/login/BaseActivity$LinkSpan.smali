.class public Lcom/google/android/gsf/login/BaseActivity$LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkSpan"
.end annotation


# static fields
.field private static final ANDROID_POLICIES:[Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;


# instance fields
.field private mParent:Lcom/google/android/gsf/login/BaseActivity;

.field private mPolicy:Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;->GOOGLE_PRIVACY_POLICY:Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;->ANDROID_PRIVACY_POLICY:Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;)V
    .locals 0
    .parameter "parent"
    .parameter "policy"

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 370
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    .line 371
    iput-object p2, p0, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->mPolicy:Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    .line 372
    return-void
.end method

.method static linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 387
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Landroid/text/Annotation;

    invoke-virtual {v1, v12, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 389
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 390
    array-length v3, v0

    move v4, v12

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 391
    const-string v6, "id"

    invoke-virtual {v5}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 392
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    move v7, v12

    .line 395
    :goto_1
    :try_start_0
    sget-object v8, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 396
    sget-object v8, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 397
    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 398
    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 399
    new-instance v10, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;

    sget-object v11, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    aget-object v11, v11, v7

    invoke-direct {v10, p0, v11}, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;-><init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;)V

    .line 400
    invoke-virtual {v1, v10}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v2, v10, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 395
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 403
    :cond_1
    if-nez v12, :cond_2

    .line 404
    const-string v5, "GoogleLoginService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such policy while creating link, id=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v5

    .line 407
    const-string v5, "GoogleLoginService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to convert value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to a number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 411
    :cond_3
    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->mPolicy:Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BaseActivity;->showAgreement(Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;)V

    .line 377
    return-void
.end method
