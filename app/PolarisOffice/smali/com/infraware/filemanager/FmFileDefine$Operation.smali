.class public Lcom/infraware/filemanager/FmFileDefine$Operation;
.super Ljava/lang/Object;
.source "FmFileDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Operation"
.end annotation


# static fields
.field public static final AUTH:I = 0x15

.field public static final COPY:I = 0x1

.field public static final COPYPROGRESS:I = 0x12

.field public static final CUT:I = 0x0

.field public static final DELETE:I = 0x3

.field public static final DELETE_FOLDER:I = 0x10

.field public static final DOWNLOAD:I = 0xc

.field public static final DOWNLOADnSAVE:I = 0xf

.field public static final DOWNLOADnVIEW:I = 0xf

.field public static final LOGIN:I = 0xa

.field public static final MULTIDELETE:I = 0x14

.field public static final NEWFILE:I = 0xe

.field public static final NEWFOLDER:I = 0xd

.field public static final PASTE:I = 0x2

.field public static final PROGRESSGOINGESTURE:I = 0x13

.field public static final PROPERTY:I = 0x6

.field public static final REFERSH:I = 0x11

.field public static final RENAME:I = 0x4

.field public static final SEND:I = 0x5

.field public static final UPLOAD:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/FmFileDefine;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileDefine$Operation;->this$0:Lcom/infraware/filemanager/FmFileDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
