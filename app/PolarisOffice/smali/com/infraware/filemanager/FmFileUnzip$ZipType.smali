.class public Lcom/infraware/filemanager/FmFileUnzip$ZipType;
.super Ljava/lang/Object;
.source "FmFileUnzip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileUnzip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZipType"
.end annotation


# static fields
.field public static final ENCRYPTION:I = -0x2

.field public static final NORMAL:I = 0x0

.field public static final NOT_SUPPORTED:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileUnzip;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/FmFileUnzip;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileUnzip$ZipType;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
