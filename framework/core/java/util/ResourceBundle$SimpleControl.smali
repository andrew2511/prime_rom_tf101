.class Ljava/util/ResourceBundle$SimpleControl;
.super Ljava/util/ResourceBundle$Control;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleControl"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "format"

    .prologue
    .line 684
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$SimpleControl;->listClass:Ljava/util/List;

    .line 686
    sget-object v0, Ljava/util/ResourceBundle$SimpleControl;->listClass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v0, Ljava/util/ResourceBundle$SimpleControl;->listClass:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    .line 688
    return-void
.end method
