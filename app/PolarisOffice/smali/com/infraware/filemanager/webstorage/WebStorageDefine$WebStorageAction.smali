.class public Lcom/infraware/filemanager/webstorage/WebStorageDefine$WebStorageAction;
.super Ljava/lang/Object;
.source "WebStorageDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/webstorage/WebStorageDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebStorageAction"
.end annotation


# static fields
.field public static final WS_ACTION_STATUS_CHANGED:Ljava/lang/String; = "com.infraware.filemanager.webstorage.WebStorageAction.STATUS_CHANGED"


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/webstorage/WebStorageDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/webstorage/WebStorageDefine;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/WebStorageDefine$WebStorageAction;->this$0:Lcom/infraware/filemanager/webstorage/WebStorageDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
