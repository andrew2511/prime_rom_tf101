.class public Lcom/infraware/filemanager/database/FmFileDatabase$MimeType;
.super Ljava/lang/Object;
.source "FmFileDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/database/FmFileDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimeType"
.end annotation


# static fields
.field public static final EXCEL_2003:Ljava/lang/String; = "application/vnd.ms-excel"

.field public static final EXCEL_2007:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

.field public static final PPT_2003:Ljava/lang/String; = "application/vnd.ms-powerpoint"

.field public static final PPT_2007:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.presentationml.presentation"

.field public static final WORD_2003:Ljava/lang/String; = "application/msword"

.field public static final WORD_2007:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/database/FmFileDatabase;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/database/FmFileDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$MimeType;->this$0:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
