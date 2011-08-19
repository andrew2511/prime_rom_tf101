.class public Lcom/asus/reader/book/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private mBookId:I

.field private mCurrentPageNo:I

.field private mFontSize:I

.field private mTexture:Lcom/asus/reader/book/PageTexture;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "isLandscape"

    .prologue
    const/4 v0, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/asus/reader/book/Page;->mCurrentPageNo:I

    .line 11
    iput v0, p0, Lcom/asus/reader/book/Page;->mFontSize:I

    .line 12
    new-instance v0, Lcom/asus/reader/book/PageTexture;

    invoke-direct {v0, p0, p1}, Lcom/asus/reader/book/PageTexture;-><init>(Lcom/asus/reader/book/Page;Z)V

    iput-object v0, p0, Lcom/asus/reader/book/Page;->mTexture:Lcom/asus/reader/book/PageTexture;

    .line 13
    return-void
.end method


# virtual methods
.method public getBookId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/asus/reader/book/Page;->mBookId:I

    return v0
.end method

.method public getCurrentPageNo()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/asus/reader/book/Page;->mCurrentPageNo:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/asus/reader/book/Page;->mFontSize:I

    return v0
.end method

.method public getTexture()Lcom/asus/reader/book/PageTexture;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/asus/reader/book/Page;->mTexture:Lcom/asus/reader/book/PageTexture;

    return-object v0
.end method

.method public setCurrentPageNo(III)V
    .locals 0
    .parameter "BookId"
    .parameter "currentPageNo"
    .parameter "fontSize"

    .prologue
    .line 20
    iput p1, p0, Lcom/asus/reader/book/Page;->mBookId:I

    .line 21
    iput p2, p0, Lcom/asus/reader/book/Page;->mCurrentPageNo:I

    .line 22
    iput p3, p0, Lcom/asus/reader/book/Page;->mFontSize:I

    .line 23
    return-void
.end method
