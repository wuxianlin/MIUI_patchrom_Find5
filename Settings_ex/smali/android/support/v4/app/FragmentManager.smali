.class public abstract Landroid/support/v4/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;,
        Landroid/support/v4/app/FragmentManager$BackStackEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method


# virtual methods
.method public abstract addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract beginTransaction()Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract findFragmentById(I)Landroid/support/v4/app/Fragment;
.end method

.method public abstract getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method
