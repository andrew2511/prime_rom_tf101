.class public Lcom/asus/filemanager/edit/ExistPair;
.super Ljava/lang/Object;
.source "ExistPair.java"


# instance fields
.field private mNew:Ljava/io/File;

.field private mOld:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter "oldfile"
    .parameter "newfile"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/asus/filemanager/edit/ExistPair;->mOld:Ljava/io/File;

    .line 13
    iput-object p2, p0, Lcom/asus/filemanager/edit/ExistPair;->mNew:Ljava/io/File;

    .line 14
    return-void
.end method


# virtual methods
.method public getNewFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asus/filemanager/edit/ExistPair;->mNew:Ljava/io/File;

    return-object v0
.end method

.method public getOldFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/asus/filemanager/edit/ExistPair;->mOld:Ljava/io/File;

    return-object v0
.end method
