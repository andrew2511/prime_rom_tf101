.class public Lcom/infraware/filemanager/database/FmFileDatabase$FileFormat;
.super Ljava/lang/Object;
.source "FmFileDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/database/FmFileDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileFormat"
.end annotation


# static fields
.field public static final EXCEL_2003:I = 0xba85

.field public static final EXCEL_2007:I = 0x3000

.field public static final FOLDER:I = 0x3001

.field public static final PPT_2003:I = 0xba86

.field public static final PPT_2007:I = 0x3000

.field public static final WORD_2003:I = 0xba83

.field public static final WORD_2007:I = 0x3000


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/database/FmFileDatabase;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/database/FmFileDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$FileFormat;->this$0:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
