.class public Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;
.super Landroid/app/Activity;
.source "LogTextViewer.java"


# static fields
.field private static final EMAILS:[Ljava/lang/String; = null

.field private static final FORMATTER:Ljava/text/SimpleDateFormat; = null

.field private static final TAG:Ljava/lang/String; = "LogViewer"


# instance fields
.field private mFilename:Ljava/lang/String;

.field private mRefreshButton:Landroid/widget/Button;

.field private mSendEmailButton:Landroid/widget/Button;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->FORMATTER:Ljava/text/SimpleDateFormat;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android-voice+debuglogs@google.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->EMAILS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mFilename:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->setTextFromFile()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->FORMATTER:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->EMAILS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setTextFromFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_filename_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected EXTRA_FILENAME_KEY "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_filename_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mFilename:Ljava/lang/String;

    .line 58
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mSendEmailButton:Landroid/widget/Button;

    .line 59
    const v0, 0x7f0d002f

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mRefreshButton:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mTextView:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mRefreshButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$1;-><init>(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mSendEmailButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;-><init>(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->setTextFromFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v0, "LogViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
