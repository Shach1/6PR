.class Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;
.super Landroid/support/v4/graphics/drawable/WrappedDrawableApi14;
.source "WrappedDrawableApi19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/WrappedDrawableApi19$DrawableWrapperStateKitKat;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14;-><init>(Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 34
    return-void
.end method


# virtual methods
.method public isAutoMirrored()Z
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    .locals 3

    .line 49
    new-instance v0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19$DrawableWrapperStateKitKat;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;->mState:Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19$DrawableWrapperStateKitKat;-><init>(Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .line 38
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 39
    return-void
.end method
