.class public Lcom/zinio/mobile/android/view/IssueTextModeActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/b;
.implements Lcom/zinio/mobile/android/a/b/m;


# instance fields
.field private a:I

.field private b:Lcom/zinio/mobile/android/a/b/l;

.field private c:Lcom/zinio/mobile/android/a/a/j;

.field private d:I

.field private e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Lcom/zinio/mobile/android/a/a/z;

.field private i:I

.field private j:Lcom/zinio/mobile/android/view/issue/TextModeView;

.field private k:Ljava/util/List;

.field private l:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private final s:Ljava/lang/Runnable;

.field private t:Landroid/webkit/WebViewClient;

.field private final u:Landroid/view/View$OnClickListener;

.field private v:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 85
    const/16 v0, 0x36

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->d:I

    .line 86
    const/16 v0, 0x8

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f:Landroid/os/Handler;

    .line 93
    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    .line 94
    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->k:Ljava/util/List;

    .line 95
    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->n:Landroid/widget/RelativeLayout;

    .line 97
    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->o:Landroid/widget/TextView;

    .line 105
    new-instance v0, Lcom/zinio/mobile/android/view/ag;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ag;-><init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->s:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/zinio/mobile/android/view/ah;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ah;-><init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->t:Landroid/webkit/WebViewClient;

    .line 162
    new-instance v0, Lcom/zinio/mobile/android/view/ae;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ae;-><init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    return v0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/IssueTextModeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/TextModeView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    .line 382
    const-string v2, "down"

    if-ne p1, v2, :cond_2

    .line 384
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    if-ne v1, v2, :cond_0

    .line 385
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 386
    :cond_0
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    if-ne v1, v2, :cond_1

    .line 387
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    const-string v2, "up"

    if-ne p1, v2, :cond_1

    .line 391
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    if-ne v1, v2, :cond_3

    .line 392
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 393
    :cond_3
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    if-ne v1, v2, :cond_1

    .line 394
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 460
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->d()V

    return-void
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/view/issue/TextModeView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    return-void
.end method

.method static synthetic d(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 365
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 367
    const/16 v1, 0x8

    iput v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    .line 369
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 370
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->n:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    return-void
.end method

.method static synthetic e(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 10

    .prologue
    const/16 v4, 0x32

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zinio reader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->h:Lcom/zinio/mobile/android/a/a/z;

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/z;)Lcom/zinio/mobile/android/a/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->h:Lcom/zinio/mobile/android/a/a/z;

    invoke-static {v2, v3}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v2

    .line 506
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    aput-object v5, v4, v8

    aput-object v3, v4, v9

    invoke-static {v4}, Lcom/zinio/mobile/android/util/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 510
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->v:Ljava/io/File;

    .line 514
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->v:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 516
    new-instance v5, Lcom/zinio/mobile/android/e/a;

    invoke-direct {v5}, Lcom/zinio/mobile/android/e/a;-><init>()V

    .line 517
    const/4 v6, 0x0

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/zinio/mobile/android/e/a;->a([B)V

    .line 520
    new-instance v2, Lcom/zinio/mobile/android/e/d;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6, v5}, Lcom/zinio/mobile/android/e/d;-><init>(Ljava/io/InputStream;Lcom/zinio/mobile/android/e/a;)V

    .line 522
    const/16 v4, 0x3e8

    new-array v4, v4, [B

    .line 524
    :goto_0
    invoke-virtual {v2, v4}, Lcom/zinio/mobile/android/e/d;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 525
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 538
    :goto_1
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->v:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 542
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 544
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    const v2, 0x7f08003a

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    const v2, 0x7f08003b

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 558
    if-eqz v1, :cond_3

    .line 559
    invoke-virtual {p0, v0, v8}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 575
    :cond_1
    :goto_2
    return-void

    .line 527
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/zinio/mobile/android/e/d;->close()V

    .line 528
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 529
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 533
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 565
    :cond_3
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 570
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->v:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->v:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method static synthetic f(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->s:Ljava/lang/Runnable;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 608
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->h:Lcom/zinio/mobile/android/a/a/z;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/z;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->g:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/zinio/mobile/android/view/issue/TextModeView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method static synthetic g(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c()V

    return-void
.end method

.method static synthetic h(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    const-string v0, "down"

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    const-string v0, "up"

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e()V

    return-void
.end method

.method static synthetic k(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method static synthetic l(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->i:I

    return v0
.end method

.method static synthetic m(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    .line 341
    iget v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    if-nez v0, :cond_0

    .line 342
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 343
    const/16 v1, 0x8

    iput v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    .line 346
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->n:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 358
    return-void

    .line 348
    :cond_0
    const v0, 0x7f040003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 349
    const/4 v1, 0x0

    iput v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    .line 350
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c()V

    goto :goto_0
.end method

.method public final b(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 1
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f:Landroid/os/Handler;

    invoke-static {p1, v0, p0}, Lcom/zinio/mobile/android/App;->a(Lcom/zinio/mobile/android/a/a/j;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 600
    return-void
.end method

.method public final e_()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 604
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f()V

    .line 605
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 579
    invoke-super {p0, p1, p2, p3}, Lcom/zinio/mobile/android/view/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 580
    if-nez p1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->v:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->v:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->v:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f:Landroid/os/Handler;

    new-instance v2, Lcom/zinio/mobile/android/view/ad;

    invoke-direct {v2, p0, v0}, Lcom/zinio/mobile/android/view/ad;-><init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;Ljava/io/File;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 467
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {p0}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->b(Z)V

    .line 469
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 483
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 488
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 485
    :pswitch_0
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e()V

    .line 486
    const/4 v0, 0x1

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 224
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->setContentView(I)V

    .line 229
    const-string v0, "font-preferences"

    invoke-virtual {p0, v0, v4}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    const-string v1, "default-font-size"

    invoke-static {v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    .line 234
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/issue/TextModeView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->t:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/TextModeView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    invoke-virtual {v0, v4}, Lcom/zinio/mobile/android/view/issue/TextModeView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j:Lcom/zinio/mobile/android/view/issue/TextModeView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/TextModeView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const v1, 0x7f0c0080

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0c0084

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const v2, 0x7f0c0081

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0c0082

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->d:I

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->d:I

    goto :goto_0

    :cond_1
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->n:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->o:Landroid/widget/TextView;

    .line 235
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "article_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/zinio/mobile/android/a/a/z;->a(J)Lcom/zinio/mobile/android/a/a/z;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->h:Lcom/zinio/mobile/android/a/a/z;

    const-string v1, "pub_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->q:Ljava/lang/String;

    const-string v1, "issue_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_page"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->i:I

    .line 238
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b:Lcom/zinio/mobile/android/a/b/l;

    .line 239
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/a/a/q;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->r:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    .line 240
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f()V

    .line 266
    :goto_1
    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->printStackTrace()V

    .line 250
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    goto :goto_1

    .line 253
    :cond_3
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/zinio/mobile/android/view/af;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/af;-><init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 477
    invoke-super {p0, p1, p2, p3}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 478
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c:Lcom/zinio/mobile/android/a/a/j;

    const-class v1, Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Class;)V

    .line 332
    :cond_1
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onDestroy()V

    .line 333
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 617
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 619
    const/16 v0, 0x8

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    .line 620
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 621
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->n:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 627
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 306
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->setIntent(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    .line 282
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v0, "font-preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default-font-size"

    invoke-static {v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    .line 291
    const-class v1, Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 271
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    .line 273
    invoke-static {p0}, Lcom/zinio/mobile/android/App;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Object;)V

    .line 276
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStop()V

    .line 298
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->d()V

    .line 299
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->p:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    .line 300
    return-void
.end method
