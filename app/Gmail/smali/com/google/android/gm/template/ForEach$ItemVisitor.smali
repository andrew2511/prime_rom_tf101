.class public interface abstract Lcom/google/android/gm/template/ForEach$ItemVisitor;
.super Ljava/lang/Object;
.source "ForEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/template/ForEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemVisitor"
.end annotation


# virtual methods
.method public abstract visit(Lcom/google/android/gm/template/EvalContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
