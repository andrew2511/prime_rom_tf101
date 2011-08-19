.class public Lcom/nuance/xt9/input/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# instance fields
.field final TAG_PAGE_NAME:Ljava/lang/String;

.field final TAG_PAGE_NUM:Ljava/lang/String;

.field final TAG_SYMBOL_TABLE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mKeyboardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/SymKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPage:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 11
    .parameter "context"
    .parameter "parser"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v8, "SymbolTable"

    iput-object v8, p0, Lcom/nuance/xt9/input/SymbolTable;->TAG_SYMBOL_TABLE:Ljava/lang/String;

    .line 16
    const-string v8, "PageNumber"

    iput-object v8, p0, Lcom/nuance/xt9/input/SymbolTable;->TAG_PAGE_NUM:Ljava/lang/String;

    .line 17
    const-string v8, "Page"

    iput-object v8, p0, Lcom/nuance/xt9/input/SymbolTable;->TAG_PAGE_NAME:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/nuance/xt9/input/SymbolTable;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 27
    .local v6, res:Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/nuance/xt9/input/SymbolTable;->mKeyboardList:Ljava/util/List;

    .line 28
    iput v9, p0, Lcom/nuance/xt9/input/SymbolTable;->mTotalPage:I

    .line 29
    iput v9, p0, Lcom/nuance/xt9/input/SymbolTable;->mCurrentPage:I

    .line 33
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, event:I
    if-eq v2, v10, :cond_1

    .line 34
    const/4 v8, 0x2

    if-ne v2, v8, :cond_0

    .line 35
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 37
    .local v7, tag:Ljava/lang/String;
    const-string v8, "SymbolTable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 38
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    sget-object v9, Lcom/nuance/xt9/input/R$styleable;->SymbolTable:[I

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/nuance/xt9/input/SymbolTable;->mTotalPage:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #event:I
    .end local v7           #tag:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 51
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 41
    .restart local v2       #event:I
    .restart local v7       #tag:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "Page"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 42
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    sget-object v9, Lcom/nuance/xt9/input/R$styleable;->SymbolPage:[I

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .restart local v0       #a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 44
    .local v5, location:I
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 45
    .local v3, id:I
    new-instance v4, Lcom/nuance/xt9/input/SymKeyboard;

    iget-object v8, p0, Lcom/nuance/xt9/input/SymbolTable;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8, v3}, Lcom/nuance/xt9/input/SymKeyboard;-><init>(Landroid/content/Context;I)V

    .line 46
    .local v4, keyboard:Lcom/nuance/xt9/input/SymKeyboard;
    iget-object v8, p0, Lcom/nuance/xt9/input/SymbolTable;->mKeyboardList:Ljava/util/List;

    invoke-interface {v8, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method getCurrentPage()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/nuance/xt9/input/SymbolTable;->mCurrentPage:I

    return v0
.end method

.method getPage(I)Lcom/nuance/xt9/input/SymKeyboard;
    .locals 2
    .parameter "location"

    .prologue
    .line 56
    if-gez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/SymbolTable;->mCurrentPage:I

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/nuance/xt9/input/SymbolTable;->mKeyboardList:Ljava/util/List;

    iget v1, p0, Lcom/nuance/xt9/input/SymbolTable;->mCurrentPage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/SymKeyboard;

    return-object p0

    .line 59
    .restart local p0
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/SymbolTable;->mTotalPage:I

    if-lt p1, v0, :cond_1

    .line 60
    iget v0, p0, Lcom/nuance/xt9/input/SymbolTable;->mTotalPage:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/xt9/input/SymbolTable;->mCurrentPage:I

    goto :goto_0

    .line 63
    :cond_1
    iput p1, p0, Lcom/nuance/xt9/input/SymbolTable;->mCurrentPage:I

    goto :goto_0
.end method

.method getTotalPage()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/nuance/xt9/input/SymbolTable;->mTotalPage:I

    return v0
.end method
