.class Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager2/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field action:Landroid/widget/ImageButton;

.field check:Landroid/widget/CheckBox;

.field container:Landroid/view/View;

.field date:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/asus/filemanager2/adapter/FileListAdapter;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager2/adapter/FileListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->this$0:Lcom/asus/filemanager2/adapter/FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager2/adapter/FileListAdapter;Lcom/asus/filemanager2/adapter/FileListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;-><init>(Lcom/asus/filemanager2/adapter/FileListAdapter;)V

    return-void
.end method
