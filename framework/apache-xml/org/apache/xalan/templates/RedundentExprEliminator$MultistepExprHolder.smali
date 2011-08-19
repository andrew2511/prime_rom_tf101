.class Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
.super Ljava/lang/Object;
.source "RedundentExprEliminator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/RedundentExprEliminator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultistepExprHolder"
.end annotation


# instance fields
.field m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

.field m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

.field final m_stepCount:I

.field final synthetic this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V
    .registers 7
    .parameter
    .parameter "exprOwner"
    .parameter "stepCount"
    .parameter "next"

    .prologue
    .line 1322
    iput-object p1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    iput-object p2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    .line 1324
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_c
    const-string v1, "exprOwner can not be null!"

    invoke-static {v0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1325
    iput p3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    .line 1326
    iput-object p4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 1327
    return-void

    .line 1324
    :cond_16
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 11
    .parameter "exprOwner"
    .parameter "stepCount"

    .prologue
    .line 1339
    move-object v0, p0

    .line 1340
    .local v0, first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object v3, p0

    .line 1341
    .local v3, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v4, 0x0

    .line 1342
    .local v4, prev:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_3
    if-eqz v3, :cond_1c

    .line 1344
    iget v5, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-lt p2, v5, :cond_18

    .line 1346
    new-instance v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iget-object v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    invoke-direct {v2, v5, p1, p2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    .line 1347
    .local v2, newholder:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    if-nez v4, :cond_15

    .line 1348
    move-object v0, v2

    :goto_13
    move-object v1, v0

    .line 1359
    .end local v0           #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v2           #newholder:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .local v1, first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_14
    return-object v1

    .line 1350
    .end local v1           #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .restart local v0       #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .restart local v2       #newholder:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_15
    iput-object v2, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_13

    .line 1354
    .end local v2           #newholder:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_18
    move-object v4, v3

    .line 1355
    iget-object v3, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_3

    .line 1358
    :cond_1c
    new-instance v5, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iget-object v6, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    const/4 v7, 0x0

    invoke-direct {v5, v6, p1, p2, v7}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    iput-object v5, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v1, v0

    .line 1359
    .end local v0           #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .restart local v1       #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    goto :goto_14
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1311
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected diagnose()V
    .registers 5

    .prologue
    .line 1418
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found multistep iterators: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1419
    move-object v0, p0

    .line 1420
    .local v0, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_23
    :goto_23
    if-eqz v0, :cond_4b

    .line 1422
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1423
    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 1424
    if-eqz v0, :cond_23

    .line 1425
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_23

    .line 1427
    :cond_4b
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 1428
    return-void
.end method

.method getLength()I
    .registers 3

    .prologue
    .line 1403
    const/4 v0, 0x0

    .line 1404
    .local v0, count:I
    move-object v1, p0

    .line 1405
    .local v1, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_2
    if-eqz v1, :cond_9

    .line 1407
    add-int/lit8 v0, v0, 0x1

    .line 1408
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_2

    .line 1410
    :cond_9
    return v0
.end method

.method unlink(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 8
    .parameter "itemToRemove"

    .prologue
    const/4 v5, 0x0

    .line 1374
    move-object v0, p0

    .line 1375
    .local v0, first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object v1, p0

    .line 1376
    .local v1, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v2, 0x0

    .line 1377
    .local v2, prev:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_4
    if-eqz v1, :cond_19

    .line 1379
    if-ne v1, p1, :cond_15

    .line 1381
    if-nez v2, :cond_10

    .line 1382
    iget-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 1386
    :goto_c
    iput-object v5, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v3, v0

    .line 1395
    :goto_f
    return-object v3

    .line 1384
    :cond_10
    iget-object v3, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object v3, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_c

    .line 1390
    :cond_15
    move-object v2, v1

    .line 1391
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_4

    .line 1394
    :cond_19
    const/4 v3, 0x0

    const-string v4, "unlink failed!!!"

    invoke-static {v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    move-object v3, v5

    .line 1395
    goto :goto_f
.end method
