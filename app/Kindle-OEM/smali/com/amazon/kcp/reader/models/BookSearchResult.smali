.class public abstract Lcom/amazon/kcp/reader/models/BookSearchResult;
.super Ljava/lang/Object;
.source "BookSearchResult.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IGoto;


# instance fields
.field private final matchLength:I

.field private final matchOffset:I

.field private final position:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter "text"
    .parameter "matchOffset"
    .parameter "matchLength"
    .parameter "position"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/BookSearchResult;->text:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/amazon/kcp/reader/models/BookSearchResult;->matchOffset:I

    .line 26
    iput p3, p0, Lcom/amazon/kcp/reader/models/BookSearchResult;->matchLength:I

    .line 27
    iput p4, p0, Lcom/amazon/kcp/reader/models/BookSearchResult;->position:I

    .line 28
    return-void
.end method


# virtual methods
.method public getMatchLength()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/amazon/kcp/reader/models/BookSearchResult;->matchLength:I

    return v0
.end method

.method public getMatchOffset()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/amazon/kcp/reader/models/BookSearchResult;->matchOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/amazon/kcp/reader/models/BookSearchResult;->position:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/BookSearchResult;->text:Ljava/lang/String;

    return-object v0
.end method
