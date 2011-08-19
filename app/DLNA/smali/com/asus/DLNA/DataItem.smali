.class Lcom/asus/DLNA/DataItem;
.super Ljava/lang/Object;
.source "Utils.java"


# instance fields
.field private category:I

.field private datapath:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private id:J

.field private minetype:Ljava/lang/String;

.field private type:I

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getcategory()I
    .locals 1

    .prologue
    .line 1755
    iget v0, p0, Lcom/asus/DLNA/DataItem;->category:I

    return v0
.end method

.method public getminetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/asus/DLNA/DataItem;->minetype:Ljava/lang/String;

    return-object v0
.end method

.method public getname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/asus/DLNA/DataItem;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getorgid()J
    .locals 2

    .prologue
    .line 1750
    iget-wide v0, p0, Lcom/asus/DLNA/DataItem;->id:J

    return-wide v0
.end method

.method public getpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/asus/DLNA/DataItem;->datapath:Ljava/lang/String;

    return-object v0
.end method

.method public gettype()I
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Lcom/asus/DLNA/DataItem;->type:I

    return v0
.end method

.method public geturi()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/asus/DLNA/DataItem;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public setcategory(I)V
    .locals 0
    .parameter "ct"

    .prologue
    .line 1747
    iput p1, p0, Lcom/asus/DLNA/DataItem;->category:I

    return-void
.end method

.method public setfilename(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/asus/DLNA/DataItem;->filename:Ljava/lang/String;

    return-void
.end method

.method public setminetype(Ljava/lang/String;)V
    .locals 0
    .parameter "ff"

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/asus/DLNA/DataItem;->minetype:Ljava/lang/String;

    return-void
.end method

.method public setorgid(J)V
    .locals 0
    .parameter "lid"

    .prologue
    .line 1742
    iput-wide p1, p0, Lcom/asus/DLNA/DataItem;->id:J

    return-void
.end method

.method public setpath(Ljava/lang/String;)V
    .locals 0
    .parameter "temppath"

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/asus/DLNA/DataItem;->datapath:Ljava/lang/String;

    return-void
.end method

.method public settype(I)V
    .locals 0
    .parameter "temptype"

    .prologue
    .line 1743
    iput p1, p0, Lcom/asus/DLNA/DataItem;->type:I

    return-void
.end method

.method public seturi(Landroid/net/Uri;)V
    .locals 0
    .parameter "tempuri"

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/asus/DLNA/DataItem;->uri:Landroid/net/Uri;

    return-void
.end method
