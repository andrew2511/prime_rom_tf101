.class public Lcom/asus/dictionary/DictionaryActivity;
.super Landroid/app/Activity;
.source "DictionaryActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ACTION_LOOKUP:Ljava/lang/String; = "com.asus.searchintent"

.field private static final DEFAULT_HEIGHT:Ljava/lang/String; = "20"

.field private static final DEFAULT_POS:Ljava/lang/String; = "50"

.field private static final DEFAULT_WIDTH:Ljava/lang/String; = "50"

.field private static final DICTIONARY_FAILED:I = 0x1

.field private static final DICTIONARY_FINISH:I = 0x0

.field public static final STR_BOXES:Ljava/lang/String; = "boxes"

.field public static final STR_EXTRA_DATA:Ljava/lang/String; = "extraData"

.field public static final STR_LANGUAGE:Ljava/lang/String; = "language"

.field public static final STR_WORD:Ljava/lang/String; = "searchtext"

.field public static final TAG:Ljava/lang/String; = "Dictionary"


# instance fields
.field private mDictionary:Lcom/asus/dictionary/Dictionary;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Lcom/asus/dictionary/DictionaryActivity$1;

    invoke-direct {v0, p0}, Lcom/asus/dictionary/DictionaryActivity$1;-><init>(Lcom/asus/dictionary/DictionaryActivity;)V

    iput-object v0, p0, Lcom/asus/dictionary/DictionaryActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/dictionary/DictionaryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/asus/dictionary/DictionaryActivity;->dictionaryFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/dictionary/DictionaryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/asus/dictionary/DictionaryActivity;->dictionaryFailed()V

    return-void
.end method

.method private dictionaryFailed()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "No Result"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 117
    iget-object v0, p0, Lcom/asus/dictionary/DictionaryActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    invoke-virtual {v0}, Lcom/asus/dictionary/Dictionary;->destroy()V

    .line 118
    invoke-virtual {p0}, Lcom/asus/dictionary/DictionaryActivity;->finish()V

    .line 119
    return-void
.end method

.method private dictionaryFinish()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method private getCheckedBoxes(Landroid/content/Intent;)Ljava/util/List;
    .locals 7
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v4, "boxes"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 83
    const-string v4, "boxes"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 84
    .local v3, temp:Ljava/util/List;
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 85
    move-object v2, v3

    .line 90
    .end local v3           #temp:Ljava/util/List;
    :cond_0
    if-nez v2, :cond_1

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, boxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "x1"

    const-string v5, "50"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v4, "y1"

    const-string v5, "50"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v4, "x2"

    const-string v5, "5050"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v4, "y2"

    const-string v5, "5020"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v0           #boxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 102
    .local v1, firstMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "x1"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "x1"

    const-string v5, "50"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    const-string v4, "y1"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "y1"

    const-string v5, "50"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_3
    const-string v4, "x2"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "x2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "50"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_4
    const-string v4, "y2"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "y2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "y1"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "20"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_5
    return-object v2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    invoke-virtual {p0}, Lcom/asus/dictionary/DictionaryActivity;->finish()V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/asus/dictionary/DictionaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 45
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v8, "searchtext"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, wordLookup:Ljava/lang/String;
    const-string v8, "com.asus.searchintent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/asus/dictionary/DictionaryActivity;->finish()V

    .line 49
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/asus/dictionary/DictionaryActivity;->finish()V

    .line 51
    :cond_2
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/asus/dictionary/DictionaryActivity;->setContentView(I)V

    .line 52
    const/high16 v8, 0x7f06

    invoke-virtual {p0, v8}, Lcom/asus/dictionary/DictionaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, dicLayout:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    new-instance v8, Lcom/asus/dictionary/Dictionary;

    check-cast v2, Landroid/widget/RelativeLayout;

    .end local v2           #dicLayout:Landroid/view/View;
    invoke-direct {v8, p0, v2}, Lcom/asus/dictionary/Dictionary;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v8, p0, Lcom/asus/dictionary/DictionaryActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    .line 56
    iget-object v8, p0, Lcom/asus/dictionary/DictionaryActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    const/high16 v9, 0x7f02

    invoke-virtual {v8, v9}, Lcom/asus/dictionary/Dictionary;->setBackground(I)V

    .line 57
    iget-object v8, p0, Lcom/asus/dictionary/DictionaryActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    iget-object v9, p0, Lcom/asus/dictionary/DictionaryActivity;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v11, v10}, Lcom/asus/dictionary/Dictionary;->setStatusCallback(Landroid/os/Handler;II)V

    .line 59
    const/4 v4, 0x0

    .line 60
    .local v4, i:I
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v7, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-direct {p0, v5}, Lcom/asus/dictionary/DictionaryActivity;->getCheckedBoxes(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, boxes:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, extraData:Ljava/lang/String;
    const-string v8, "language"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, wordLanguage:Ljava/lang/String;
    iget-object v8, p0, Lcom/asus/dictionary/DictionaryActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    invoke-virtual {v8, v7, v1, v3, v6}, Lcom/asus/dictionary/Dictionary;->lookupString(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/asus/dictionary/DictionaryActivity;->finish()V

    .line 124
    const/4 v0, 0x1

    return v0
.end method
