.class Lcom/layar/TabListActivity$TabListItem;
.super Ljava/lang/Object;
.source "TabListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/TabListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabListItem"
.end annotation


# instance fields
.field public icon:I

.field public intentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/TabListActivity;

.field public title:I


# direct methods
.method public constructor <init>(Lcom/layar/TabListActivity;Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "icon"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p5, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/layar/TabListActivity$TabListItem;->this$0:Lcom/layar/TabListActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/layar/TabListActivity$TabListItem;->tag:Ljava/lang/String;

    .line 87
    iput p3, p0, Lcom/layar/TabListActivity$TabListItem;->icon:I

    .line 88
    iput p4, p0, Lcom/layar/TabListActivity$TabListItem;->title:I

    .line 89
    iput-object p5, p0, Lcom/layar/TabListActivity$TabListItem;->intentClass:Ljava/lang/Class;

    return-void
.end method
