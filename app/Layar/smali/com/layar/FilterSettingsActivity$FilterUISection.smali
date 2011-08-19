.class public Lcom/layar/FilterSettingsActivity$FilterUISection;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FilterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterUISection"
.end annotation


# instance fields
.field public final controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/FilterSettingsActivity$FilterUIControl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layar/FilterSettingsActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "title"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$FilterUISection;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity$FilterUISection;->controls:Ljava/util/ArrayList;

    .line 387
    iput-object p2, p0, Lcom/layar/FilterSettingsActivity$FilterUISection;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$FilterUISection;->controls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
