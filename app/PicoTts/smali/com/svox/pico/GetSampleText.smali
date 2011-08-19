.class public Lcom/svox/pico/GetSampleText;
.super Landroid/app/Activity;
.source "GetSampleText.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, result:I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v4, returnData:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/svox/pico/GetSampleText;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "language"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, language:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "country"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "variant"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, variant:Ljava/lang/String;
    const-string v6, "eng"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 45
    const-string v6, "GBR"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    const-string v6, "sampleText"

    const v7, 0x7f040002

    invoke-virtual {p0, v7}, Lcom/svox/pico/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/svox/pico/GetSampleText;->setResult(ILandroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/svox/pico/GetSampleText;->finish()V

    .line 65
    return-void

    .line 48
    :cond_0
    const-string v6, "sampleText"

    const v7, 0x7f040001

    invoke-virtual {p0, v7}, Lcom/svox/pico/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 50
    :cond_1
    const-string v6, "fra"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    const-string v6, "sampleText"

    const v7, 0x7f040003

    invoke-virtual {p0, v7}, Lcom/svox/pico/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 52
    :cond_2
    const-string v6, "ita"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 53
    const-string v6, "sampleText"

    const v7, 0x7f040005

    invoke-virtual {p0, v7}, Lcom/svox/pico/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 54
    :cond_3
    const-string v6, "deu"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 55
    const-string v6, "sampleText"

    const v7, 0x7f040004

    invoke-virtual {p0, v7}, Lcom/svox/pico/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 56
    :cond_4
    const-string v6, "spa"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 57
    const-string v6, "sampleText"

    const v7, 0x7f040006

    invoke-virtual {p0, v7}, Lcom/svox/pico/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 59
    :cond_5
    const/4 v3, -0x2

    .line 60
    const-string v6, "sampleText"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
