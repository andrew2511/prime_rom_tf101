.class public interface abstract annotation Ldalvik/annotation/ToBeFixed;
.super Ljava/lang/Object;
.source "ToBeFixed.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ldalvik/annotation/ToBeFixed;
        bug = ""
        explanation = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract bug()Ljava/lang/String;
.end method

.method public abstract explanation()Ljava/lang/String;
.end method
