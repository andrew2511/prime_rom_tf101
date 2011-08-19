.class final Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;
.super Ljava/lang/Object;
.source "Table.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/binxml/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TableRowIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private row_:I

.field final synthetic this$0:Lcom/amazon/topaz/internal/binxml/Table;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/binxml/Table;I)V
    .locals 0
    .parameter
    .parameter "row"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;->this$0:Lcom/amazon/topaz/internal/binxml/Table;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;->row_:I

    .line 56
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;->row_:I

    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;->this$0:Lcom/amazon/topaz/internal/binxml/Table;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;->row_:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;->row_:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
