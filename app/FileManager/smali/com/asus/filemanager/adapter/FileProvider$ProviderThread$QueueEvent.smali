.class Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;
.super Ljava/lang/Object;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueEvent"
.end annotation


# instance fields
.field m_arg1:I

.field m_arg2:I

.field m_obj:Ljava/lang/Object;

.field m_what:I

.field final synthetic this$0:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;IIILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->this$0:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p2, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->m_what:I

    .line 164
    iput p3, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->m_arg1:I

    .line 165
    iput p4, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->m_arg2:I

    .line 166
    iput-object p5, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->m_obj:Ljava/lang/Object;

    .line 167
    return-void
.end method
