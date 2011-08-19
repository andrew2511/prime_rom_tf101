.class public Lcom/infraware/filemanager/database/FmFileDatabase$DocType;
.super Ljava/lang/Object;
.source "FmFileDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/database/FmFileDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocType"
.end annotation


# static fields
.field public static final ETC:I = 0x7

.field public static final EXCEL_2003:I = 0x3

.field public static final EXCEL_2007:I = 0x4

.field public static final PPT_2003:I = 0x5

.field public static final PPT_2007:I = 0x6

.field public static final WORD_2003:I = 0x1

.field public static final WORD_2007:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/database/FmFileDatabase;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/database/FmFileDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DocType;->this$0:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
