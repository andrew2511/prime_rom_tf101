.class public final Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;
.super Ljava/lang/Object;
.source "BookIndexAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ui/BookIndexAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookIndexCache"
.end annotation


# instance fields
.field private mPageNumber:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "title"
    .parameter "page"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;->mTitle:Ljava/lang/String;

    .line 102
    iput p2, p0, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;->mPageNumber:I

    .line 103
    return-void
.end method


# virtual methods
.method public getPageNum()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;->mPageNumber:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;->mTitle:Ljava/lang/String;

    return-object v0
.end method
