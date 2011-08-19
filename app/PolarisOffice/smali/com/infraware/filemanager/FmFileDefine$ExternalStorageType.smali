.class public Lcom/infraware/filemanager/FmFileDefine$ExternalStorageType;
.super Ljava/lang/Object;
.source "FmFileDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalStorageType"
.end annotation


# static fields
.field public static final ASUS_MICROSD:I = 0x0

.field public static final ASUS_SD:I = 0x3

.field public static final ASUS_USB1:I = 0x1

.field public static final ASUS_USB2:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/FmFileDefine;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileDefine$ExternalStorageType;->this$0:Lcom/infraware/filemanager/FmFileDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
