.class public Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseTraceCursorWrapper"
.end annotation


# instance fields
.field private mTrace:Ljava/lang/Exception;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 1056
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1057
    return-void
.end method

.method static alwaysCreateForTest(Landroid/database/Cursor;)Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;
    .locals 1
    .parameter "original"

    .prologue
    .line 1090
    new-instance v0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static get(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "original"

    .prologue
    .line 1086
    return-object p0
.end method

.method public static getTraceIfAvailable(Landroid/database/Cursor;)Ljava/lang/Exception;
    .locals 1
    .parameter "c"

    .prologue
    .line 1066
    instance-of v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    if-eqz v0, :cond_0

    .line 1067
    check-cast p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    .end local p0
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->mTrace:Ljava/lang/Exception;

    .line 1069
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1074
    if-nez p0, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1077
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor was closed here: Cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->getTraceIfAvailable(Landroid/database/Cursor;)Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1081
    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor not closed.  Cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1061
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "STACK TRACE"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->mTrace:Ljava/lang/Exception;

    .line 1062
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 1063
    return-void
.end method
