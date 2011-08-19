.class public Lcom/infraware/filemanager/FmUpdateService$UpdateBinder;
.super Landroid/os/Binder;
.source "FmUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmUpdateService;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/FmUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/infraware/filemanager/FmUpdateService$UpdateBinder;->this$0:Lcom/infraware/filemanager/FmUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/infraware/filemanager/FmUpdateService;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/filemanager/FmUpdateService$UpdateBinder;->this$0:Lcom/infraware/filemanager/FmUpdateService;

    return-object v0
.end method
