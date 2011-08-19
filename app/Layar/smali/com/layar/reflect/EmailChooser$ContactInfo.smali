.class public Lcom/layar/reflect/EmailChooser$ContactInfo;
.super Ljava/lang/Object;
.source "EmailChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/reflect/EmailChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field public emails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isChecked:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "email"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "email"
    .parameter "isChecked"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iput-boolean p3, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    .line 35
    return-void
.end method
