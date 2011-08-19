.class Lcom/asus/filemanager/adapter/ItemIcon$Icon;
.super Ljava/lang/Object;
.source "ItemIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/adapter/ItemIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Icon"
.end annotation


# instance fields
.field b:Landroid/graphics/Bitmap;

.field f:Lcom/asus/filemanager/main/VFile;

.field r:I

.field final synthetic this$0:Lcom/asus/filemanager/adapter/ItemIcon;

.field v:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/adapter/ItemIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/adapter/ItemIcon;Lcom/asus/filemanager/adapter/ItemIcon$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/asus/filemanager/adapter/ItemIcon$Icon;-><init>(Lcom/asus/filemanager/adapter/ItemIcon;)V

    return-void
.end method
