.class public interface abstract annotation Lcom/skyhookwireless/_sdkk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/skyhookwireless/_sdkk;
        _sdka = .enum Lcom/skyhookwireless/_sdke;->PUBLIC:Lcom/skyhookwireless/_sdke;
        _sdkb = .enum Lcom/skyhookwireless/_sdke;->NONE:Lcom/skyhookwireless/_sdke;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract _sdka()Lcom/skyhookwireless/_sdke;
.end method

.method public abstract _sdkb()Lcom/skyhookwireless/_sdke;
.end method
