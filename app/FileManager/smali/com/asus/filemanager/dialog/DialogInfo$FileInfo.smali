.class Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;
.super Ljava/lang/Object;
.source "DialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field mNum:J

.field mSize:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(JLjava/math/BigDecimal;)V
    .locals 0
    .parameter "num"
    .parameter "size"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mNum:J

    .line 39
    iput-object p3, p0, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mSize:Ljava/math/BigDecimal;

    .line 40
    return-void
.end method
