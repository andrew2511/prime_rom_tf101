.class public Lcom/asus/filemanager/adapter/ScanFile$Result;
.super Ljava/lang/Object;
.source "ScanFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/adapter/ScanFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public mFileArray:[Lcom/asus/filemanager/main/VFile;

.field public mIndicatorFile:Lcom/asus/filemanager/main/VFile;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager/main/VFile;[Lcom/asus/filemanager/main/VFile;)V
    .locals 0
    .parameter "indicatorFile"
    .parameter "fileArray"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/asus/filemanager/adapter/ScanFile$Result;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    .line 36
    iput-object p2, p0, Lcom/asus/filemanager/adapter/ScanFile$Result;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    .line 37
    return-void
.end method
