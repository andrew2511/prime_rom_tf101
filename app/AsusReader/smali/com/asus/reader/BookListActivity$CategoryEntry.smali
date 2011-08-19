.class public Lcom/asus/reader/BookListActivity$CategoryEntry;
.super Ljava/lang/Object;
.source "BookListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/BookListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryEntry"
.end annotation


# instance fields
.field private mCount:I

.field private mId:J

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/BookListActivity;JLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "count"

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2076
    iput-wide p2, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->mId:J

    .line 2077
    iput-object p4, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->mName:Ljava/lang/String;

    .line 2078
    iput p5, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->mCount:I

    .line 2079
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2087
    iget v0, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->mCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 2081
    iget-wide v0, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)Z
    .locals 1
    .parameter "count"

    .prologue
    .line 2090
    iget v0, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->mCount:I

    if-ne v0, p1, :cond_0

    .line 2091
    const/4 v0, 0x0

    .line 2093
    :goto_0
    return v0

    .line 2092
    :cond_0
    iput p1, p0, Lcom/asus/reader/BookListActivity$CategoryEntry;->mCount:I

    .line 2093
    const/4 v0, 0x1

    goto :goto_0
.end method
