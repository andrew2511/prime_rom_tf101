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
