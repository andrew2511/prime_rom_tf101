.class Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;
.super Ljava/lang/Object;
.source "ItemIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/adapter/ItemIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitingStack"
.end annotation


# instance fields
.field private mStackIcon:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/asus/filemanager/adapter/ItemIcon$Icon;",
            ">;"
        }
    .end annotation
.end field

.field private mStackPath:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/asus/filemanager/adapter/ItemIcon;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/adapter/ItemIcon;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackIcon:Ljava/util/Stack;

    .line 222
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackPath:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/adapter/ItemIcon;Lcom/asus/filemanager/adapter/ItemIcon$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;-><init>(Lcom/asus/filemanager/adapter/ItemIcon;)V

    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackIcon:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/asus/filemanager/adapter/ItemIcon$Icon;)I
    .locals 2
    .parameter "i"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackPath:Ljava/util/Stack;

    iget-object v1, p1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->f:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v1}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public pop()Lcom/asus/filemanager/adapter/ItemIcon$Icon;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackPath:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackIcon:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    return-object p0
.end method

.method public push(Lcom/asus/filemanager/adapter/ItemIcon$Icon;)V
    .locals 2
    .parameter "i"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackPath:Ljava/util/Stack;

    iget-object v1, p1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->f:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v1}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackIcon:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public remove(I)Lcom/asus/filemanager/adapter/ItemIcon$Icon;
    .locals 1
    .parameter "idx"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackPath:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$WaitingStack;->mStackIcon:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    return-object p0
.end method
